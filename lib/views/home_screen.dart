import 'package:avahanapp/views/sports_details.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(children: <Widget>[
            Image.asset(
              'assets/sphometbg.png',
              width: 475,
              height: 550,
              fit: BoxFit.cover,
            ),
            // SizedBox(
            //   height: 100,
            // ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 475),
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "AVAHAN",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 520),
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Welcome to the official app for Avahan",
                style: TextStyle(fontSize: 20),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 550),
              padding: EdgeInsets.only(left: 10),
              child: TextButton(
                child: Text(
                  'Explore',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sportsDetails()));
                },
                style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 254, 254, 254),
                    elevation: 2,
                    backgroundColor: Color.fromARGB(255, 226, 30, 30)),
              ),
            )
          ]),
        ],
      ),
    ));
  }
}
