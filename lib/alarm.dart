import 'package:flutter/material.dart'; //Google Material Design assets
import 'package:audioplayers/audioplayers.dart';
import 'dart:convert'; // for JSON etc.
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:shared_preferences/shared_preferences.dart'; // for saving/loading data for new start of the app
import 'package:wakelock/wakelock.dart'; // this is needed to keep the screen active
import 'dart:developer' as dev;


// data structure / class for one alarm
class CustomAlarm {
  bool isActive;
  bool isRinging;
  String nameOfAlarm;
  TimeOfDay alarmTime; // default value //todo move comment
  DateTime alarmDate; // default today plus 1 day later
  bool isRecurrent; //default value is single time alarm
  List<bool> weekdayRecurrence; //from Monday to Sunday // = [false, false, false, false, false, false, false];
  bool challengeMode;


  CustomAlarm
  ({
    this.isActive = false,
    this.isRinging = false,
    this.nameOfAlarm = "New alarm",
    this.alarmTime = const TimeOfDay(hour: 9, minute: 45),
    DateTime? alarmDate, // constructors need const; that's why outsourced
    this.isRecurrent = false,
    List<bool>? weekdayRecurrence, // constructors need const; that's why outsourced
    this.challengeMode = false
  }
    ):
      this.alarmDate = alarmDate ?? DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1),
      this.weekdayRecurrence = weekdayRecurrence ?? List.filled(7, false)
  ;

// I need the JSON format to save/load the data (shared preferences doesn't support classes)

  // (1) to JSON
  Map<String, dynamic> toJson() => {
    "isActive": isActive,
    "isRinging": isRinging,
    "nameOfAlarm": nameOfAlarm,
    "alarmTimeHour": alarmTime.hour,
    "alarmTimeMinute": alarmTime.minute,
    "alarmDate": alarmDate.toIso8601String(),
    "isRecurrent": isRecurrent,
    "weekdayRecurrence": weekdayRecurrence,
    "challengeMode": challengeMode,
  };

  // (2) from JSON todo das funktioniert nicht...
  factory CustomAlarm.fromJson(Map<String, dynamic> json){
    return CustomAlarm(
        isActive: json['isActive'],
        isRinging: json['isRinging'],
        nameOfAlarm: json['nameOfAlarm'],
        alarmTime: TimeOfDay(hour: json['alarmTimeHour'], minute: json['alarmTimeMinute']),
        alarmDate: DateTime.parse(json['alarmDate']),
        isRecurrent: json['isRecurrent'],
        weekdayRecurrence: (json['weekdayRecurrence'] as List<dynamic>).cast<bool>(),
        challengeMode: json['challengeMode'],
    );
  }
}

List<CustomAlarm?> listOfSavedAlarms = []; // list including all the saved alarms

/// Init app function; this should be called only for the first start of the app or when the app is reset via settings
List<CustomAlarm?> initAlarms()
{
  // Data structure / list for a collection of saved alarms
  List<CustomAlarm?> savedAlarmList = [];

  // create one default alarm with some settings
  CustomAlarm? firstDefaultAlarm = CustomAlarm();
  firstDefaultAlarm.nameOfAlarm = "Weekly meeting";
  firstDefaultAlarm.alarmTime = const TimeOfDay(hour: 16, minute: 00);
  firstDefaultAlarm.isRecurrent = true;
  firstDefaultAlarm.weekdayRecurrence = [false, false, true, true, false, false, false];
  savedAlarmList.add(firstDefaultAlarm); // add this alarm to the list

  // create another default alarm with some settings
  CustomAlarm? secondDefaultAlarm = CustomAlarm();
  secondDefaultAlarm.nameOfAlarm = "Dentist";
  secondDefaultAlarm.alarmTime = const TimeOfDay(hour: 14, minute: 45);
  secondDefaultAlarm.isActive = true;
  secondDefaultAlarm.isRecurrent = false;
  savedAlarmList.add(secondDefaultAlarm); // add this alarm to the list
  dev.log("Alarms have been initialized...", name: 'Alarm');
  return savedAlarmList;
}

/// Convert weekday number to weekday string
String weekdayNumberToString(int number)
{
  String output = 'None';
  switch(number){
    case 1: output = 'Mon'; break;
    case 2: output = 'Tue'; break;
    case 3: output = 'Wed'; break;
    case 4: output = 'Thu'; break;
    case 5: output = 'Fri'; break;
    case 6: output = 'Sat'; break;
    case 7: output = 'Sun'; break;
  }
  return output;
}

/// Converts a bool list of weekdays to strings
String weekdayBoolListToString(List<bool> weekdays)
{
  String output = "";
  int weekdayCounter = 0;
  for (final i in weekdays)
    {
    weekdayCounter++;
    if (i == true)
      {
        if (output == "")
          {
            output = output + weekdayNumberToString(weekdayCounter); //the first entry without comma
          }
        else
          {
            output = output + ", "+ weekdayNumberToString(weekdayCounter); //the other entries with a comma
          }
      }
  }
  return output;
}

/// Play audio function
void playAlarmSound(double volume)
{
  FlutterRingtonePlayer.play(
    android: AndroidSounds.notification,
    ios: IosSounds.glass,
    looping: true, // Android only - API >= 28
    volume: volume, // Android only - API >= 28
    asAlarm: true, // Android only - all APIs
  );
}

/// Stop audio function
void stopAlarmSound()
{
  FlutterRingtonePlayer.stop();
}



List<CustomAlarm?> deactivateAlarm(
    CustomAlarm? triggeredAlarm, alarmIndex) {
  List<CustomAlarm?> alarmList = listOfSavedAlarms;
  alarmList[alarmIndex]!.isActive = false;
  stopAlarmSound();
  Wakelock.disable(); // stop that the screen is consistently active
  dev.log("Alarm has been turned off!", name: 'Alarm');
  listOfSavedAlarms =
      alarmList; //save the local list back to the global one
  saveData();
  return alarmList;
}




/// Saving listOfSavedAlarms
/// Do it:
/// (1) after an alarm is created
/// (2) after an alarm is deleted
/// (3) after an alarm is edited (not available at this time)
/// (4) after characterists of an alarm change:
///   (4.1) isRinging (when is alarm is going off and when it's deactived)
///   (4.2) isActive (when the toggle is used)
/// (5) regularly via a timer
Future<void> saveData() async { //todo either when create und alarm triggered....
  dev.log("Saving alarm data...", name: 'Alarm');
  final prefs = await SharedPreferences.getInstance();
  prefs.setStringList('alarmList', listOfSavedAlarms.map((alarm) => jsonEncode(alarm)).toList()); //set JSON-encoded values to the key 'alarmList'
  dev.log('saved ${listOfSavedAlarms.length} alarms', name: 'Alarm');
}
