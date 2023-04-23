// ignore_for_file: library_private_types_in_public_api, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:firebase_database/firebase_database.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  String? _phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Event Registration'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please fill out the form below to register for the event:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 16),
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value;
                  },
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email address',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value;
                  },
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phone = value;
                  },
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 32),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        _showSuccessDialog();
                      }
                    },
                    // ignore: prefer_const_constructors
                    child: Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//   void _saveRegistrationData() {
//   FirebaseFirestore.instance.collection('registrations').add({
//     'name': _name,
//     'email': _email,
//     'phone': _phone,
//   }).then((value) {
//     _showSuccessDialog();
//   }).catchError((error) {
//     print('Failed to save registration data: $error');
//   });
// }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // ignore: prefer_const_constructors
          title: Text('Registration successful'),
          // ignore: prefer_const_constructors
          content: Text('Thank you for registering for ZEAL!!!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                //            if (_formKey.currentState!.validate()) {
                //           _formKey.currentState!.save();
                //           _saveRegistrationData(); // save data to Firebase
                // }
              },
              // ignore: prefer_const_constructors
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
