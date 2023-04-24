import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    // leading: IconButton(
    //   icon: SvgPicture.asset("assets/icons/menu.svg"),
    //   onPressed: () {},
    // ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Khaana",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Lelo",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    // actions: <Widget>[
    //   IconButton(
    //     icon: SvgPicture.asset("assets/icons/notification.svg"),
    //     onPressed: () {},
    //   ),
    // ],
  );
}
