import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({required this.image, required this.title, required this.subtitle, required this.price, required this.desc,});

  final String image, title, subtitle, price, desc;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: const BackButton(
        color: Colors.black, // <-- SEE HERE
      ),
      title: Text('Product', style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w500),),
      centerTitle: true,
    ),
    body: ListView(
      children: [
        Container(
            height: 370,
          padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20.0),
      bottomRight: Radius.circular(20.0),
    ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
              child: Center(
                child: Image.network('$image', fit: BoxFit.fill,),
              ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20,),
        Center(
          child: Text('₹ $price', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Varela',color: Colors.red)),
        ),
        SizedBox(height: 10,),
        Center(
          child: Text('$title', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontFamily: 'Varela', color: Color(0xFF575E67))),
        ),
        Text('$subtitle', textAlign: TextAlign.center, style: TextStyle(fontSize: 15.0, fontFamily: 'Varela', color: Color(0xFFB4B8B9,))),
        SizedBox(height: 10,),
        Text('$desc', textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontFamily: 'Varela', color: Color.fromARGB(255, 105, 109, 109))),
        SizedBox(height: 20.0,),
        ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        primary: Colors.deepPurpleAccent,
        shape: StadiumBorder(),
    ),
    child: Text(
        "BUY NOW",
        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
    ),
),
        SizedBox(height: 20,),
      ],
    ),
      ],
    ),
  );
}