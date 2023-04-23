// import 'package:first_project/screen2.dart';
import 'package:first_project/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/Components/Icon_Content.dart';

void main() => runApp(const myApp());

String selectedGender = " ";

// ignore: camel_case_types
class myApp extends StatefulWidget {
  const myApp({super.key});
  static const String _title = 'BMI oCalculator';

  @override
  State<myApp> createState() => myAppState();
}

// ignore: camel_case_types
class myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myApp._title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            myApp._title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const Screen1(),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent,
            child: InkWell(
              splashColor: Colors.blue,
              onTap: () {
                debugPrint('Card Tapped');
                selectedGender = "Male";
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: ((context) => SecondScreen(
                //           text1: selectedGender,
                //           key: null,
                //         ))));
              },
              child: const SizedBox(
                width: 150,
                height: 150,
                child: IconContent(
                  myicon: FontAwesomeIcons.mars,
                  text: 'Male',
                ),
              ),
            )),
        Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.grey,
            child: InkWell(
              splashColor: const Color.fromARGB(255, 10, 14, 17),
              onTap: () {
                debugPrint('Female Card Tapped');
                selectedGender = "Female";
                debugPrint(selectedGender);
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: ((context) => SecondScreen(
                //           text1: selectedGender,
                //           key: null,
                //         ))));
              },
              child: const SizedBox(
                width: 150,
                height: 150,
                child: IconContent(
                  myicon: FontAwesomeIcons.venus,
                  text: 'Female',
                ),
              ),
            )),
      ],
    );
  }
}
