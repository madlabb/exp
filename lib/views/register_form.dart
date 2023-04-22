import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class registrationform extends StatefulWidget {
  @override
  registration_formState createState() => registration_formState();
}

class registration_formState extends State<registrationform> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController sampledata1 = TextEditingController();
  TextEditingController sampledata2 = TextEditingController();
  TextEditingController sampledata3 = TextEditingController();
  TextEditingController sampledata4 = TextEditingController();
  TextEditingController sampledata5 = TextEditingController();
  TextEditingController sampledata6 = TextEditingController();
  TextEditingController sampledata7 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration form'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: sampledata1,
                  decoration: InputDecoration(
                    labelText: 'First name',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your First name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata2,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Last name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata3,
                  decoration: InputDecoration(
                    labelText: 'Branch',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Branch';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata4,
                  decoration: InputDecoration(
                    labelText: 'Year',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Year';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata5,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Phone no';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata6,
                  decoration: InputDecoration(
                    labelText: 'Email ID',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email Id';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  controller: sampledata7,
                  decoration: InputDecoration(
                    labelText: 'Enter the sport you want to play',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Sports';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Congrtatulation! You have registered succesfully for AVAHAN')),
                        );
                      }
                      Map<String, String> data = {
                        "field1": sampledata1.text,
                        "field2": sampledata2.text,
                        "field3": sampledata3.text,
                        "field4": sampledata4.text,
                        "field5": sampledata5.text,
                        "field6": sampledata6.text,
                        "field7": sampledata7.text
                      };
                      FirebaseFirestore.instance.collection("test").add(data);
                    },
                    child: const Text('Submit'),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
