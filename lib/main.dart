import 'package:flutter/material.dart';
import 'package:zeal_app_copy/registration.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZEAL',
      home: EventHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class EventHomePage extends StatelessWidget {
  final Event event = Event(
    name: 'ZEAL 2023',
    date: 'April 15th, 2023',
    time: '5:00 PM - 8:00 PM',
    venue: 'College ground, VCET, vasai',
    eventHead: 'Bhagyesh Shinkar',
    backgroundImage:
        'https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGFydHklMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    logoImage:
        'data:image/png;base64,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',
  );

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(event.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            color: Color.fromARGB(255, 53, 151, 231).withOpacity(0.9),
            borderRadius: BorderRadius.circular(16.0),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.1,
          ),
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  event.logoImage,
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                event.name,
                style: TextStyle(
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              _buildEventDetail('Date', event.date, screenWidth),
              SizedBox(height: screenHeight * 0.03),
              _buildEventDetail('Time', event.time, screenWidth),
              SizedBox(height: screenHeight * 0.03),
              _buildEventDetail('Venue', event.venue, screenWidth),
              SizedBox(height: screenHeight * 0.03),
              _buildEventDetail('Event Head', event.eventHead, screenWidth),
              SizedBox(height: screenHeight * 0.05),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        // ignore: prefer_const_constructors
                        builder: (context) => RegistrationPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  // ignore: prefer_const_constructors
                  backgroundColor: Color.fromARGB(255, 13, 77, 129),
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.15,
                    vertical: screenHeight * 0.03,
                  ),
                  textStyle: TextStyle(fontSize: screenWidth * 0.06),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.1),
                  ),
                ),
                // ignore: prefer_const_constructors
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventDetail(String label, String value, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth * 0.2,
          child: Text(
            // ignore: prefer_interpolation_to_compose_strings
            label + ':',
            style: TextStyle(fontSize: screenWidth * 0.05),
          ),
        ),
        SizedBox(width: screenWidth * 0.04),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: screenWidth * 0.05),
          ),
        ),
      ],
    );
  }
}

class Event {
  final String name;
  final String date;
  final String time;
  final String venue;
  final String eventHead;
  final String backgroundImage;
  final String logoImage;

  Event({
    required this.name,
    required this.date,
    required this.time,
    required this.venue,
    required this.eventHead,
    required this.backgroundImage,
    required this.logoImage,
  });
}
