// import 'package:first_project/Components/card.dart';
import 'package:first_project/Components/slider.dart';
import 'package:first_project/calculator_logic.dart';
import 'package:first_project/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Components/card.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  late String height = " ";
  late String weight = " ";
  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BmMI Calculator')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 211, 219, 222),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CardWidget(),
        Container(
          // color: Colors.amber,
          margin: const EdgeInsets.all(80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    controller: weightController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.,]'))
                    ],
                    decoration: InputDecoration(
                      labelText: 'Enter your Weight in Kg',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    // style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    controller: heightController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.,]'))
                    ],
                    decoration: InputDecoration(
                      labelText: 'Enter your Height in cm',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Calculate calc = Calculate(
                  height: int.parse(heightController.text),
                  weight: int.parse(weightController.text));

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    resultText: calc.getText(),
                    advise: calc.getAdvise(),
                    bmi: calc.result(),
                  ),
                ),
              );
            },
            child: const Text("Calculate"),
          ),
        )
      ]),
    );
  }

  // children: [
  //   Row(
  //     children: [Screen1()],
  //   )
  // ],
}
