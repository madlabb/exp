import 'package:flutter/material.dart'; 
import 'dart:async';
import 'dart:developer' as dev;
import 'package:is_first_run/is_first_run.dart'; 
import 'alarm.dart'; 
import 'notification.dart'; 
import 'global.dart'; 
import 'widgets/homepage_alarm_overview.dart'; 
import 'package:flutter_localizations/flutter_localizations.dart';


/// Main method
Future <void> main() async {
  dev.log("App is being started...", name: 'General');
  initializeNotifications(); //init the notifications
  runApp(const MyApp());

  
  bool firstCall = await IsFirstRun.isFirstCall();
  if (firstCall)
  {
    listOfSavedAlarms = initAlarms();
  }
  dev.log("App has been fully loaded...", name: 'General');
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    setNotificationListeners();
    super.initState();
  }


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MyApp.navigatorKey,
      title: 'Alarm Clock App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), 
      ],
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePageAlarmOverview(title: appTitleHome),
    );
  }
}