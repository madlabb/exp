import 'package:first_project/Components/Icon_Content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  CardWidget({Key? key}) : super(key: key);
  String selectedGender = " ";

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
