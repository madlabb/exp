import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/app_bar.dart';
import 'package:food_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String description;

  DetailsScreen({this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(
        description: description,
      ),
    );
  }
}
