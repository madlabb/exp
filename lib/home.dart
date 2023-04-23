import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ProductPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('DecorHub', style: TextStyle(fontSize: 30.0, fontFamily: 'mexcellent', color: Colors.black),),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
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
  child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //change space between
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FURNITURE", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                          Text("MANIA", style: GoogleFonts.changaOne(fontSize: 40, fontWeight: FontWeight.w600, color: Color(0xffe1243d))),
                          // SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("FLAT ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                              Text("60% OFF", style: GoogleFonts.changaOne(fontSize: 30, fontWeight: FontWeight.w900, color: Color(0xffe1243d))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Text("Flat 30% off", style: TextStyle(fontSize: 20,),),
                    ElevatedButton(
    onPressed: () {
      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductPage(
                          image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1680412085/MAD/thumbnailimg_smzbf4.png', title: 'Valencia Motorized Leatherette Recliner Sofa', subtitle: '(Potters Clay Brown)', price: '29,999', desc: 'Made of high-quality and premium material, this  Valencia Leatherette Motorized Recliner Sofa is sturdy in nature and offers lasting durability.',
                        ),
                        ), 
      );
    },
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        primary: Colors.deepPurpleAccent,
        shape: StadiumBorder(),
    ),
    child: Text(
        "BUY NOW",
        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
    ),
)
                  ],
                ),
                Image(image: NetworkImage("https://res.cloudinary.com/darrqmepw/image/upload/v1680412085/MAD/thumbnailimg_smzbf4.png"), height: 92,)
              ],
            ),
)
          ,
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text("Chair", style: GoogleFonts.changaOne(fontSize: 20, fontWeight: FontWeight.w300),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681299650/MAD/Chairs/download_jtwgny.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1680447000/MAD/Chairs/Winthrop_Study_Chair_LP_umyozz.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681299773/MAD/Chairs/download_pze9bh.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681299700/MAD/Chairs/download_qlcs0s.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text("Recliner", style: GoogleFonts.changaOne(fontSize: 20, fontWeight: FontWeight.w300),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681301872/MAD/Recliner/download_wcpkxr.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681301575/MAD/Recliner/download_e3pe9m.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681299878/MAD/Recliner/download_utusrt.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681299869/MAD/Recliner/download_sdc9wm.jpg',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text("Dining Table", style: GoogleFonts.changaOne(fontSize: 20, fontWeight: FontWeight.w300),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303482/MAD/Dining%20Table/download_wq66zb.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303391/MAD/Dining%20Table/download_ybjkdk.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303316/MAD/Dining%20Table/download_kpcdvh.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303258/MAD/Dining%20Table/download_yjapop.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Text("Coffee Table", style: GoogleFonts.changaOne(fontSize: 20, fontWeight: FontWeight.w300),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681304602/MAD/Table/download_p0etwk.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 1,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303557/MAD/Table/download_nletld.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 4,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303566/MAD/Table/download_ketbru.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 3,
                ),
                Card(
                  image: 'https://res.cloudinary.com/darrqmepw/image/upload/v1681303601/MAD/Table/download_q2a2jg.png',
                  title: "Gans Executive Mid Back Office Chair (Beige)",
                  subtitle: "By Furniturstation",
                  desc: "A chair is a piece of furniture that is designed to support the human body while sitting down. Chairs typically consist of a backrest, a seat, armrests (optional), and legs.",
                  price: "20",
                  star: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({required this.image, required this.title, required this.subtitle, required this.price, required this.desc, required this.star,});

  final String image, title, subtitle, price, desc;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 200,
            height: 265,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.white,
                    child: Ink.image(
                    image: NetworkImage("$image"), 
                    height: 150,
                    fit: BoxFit.contain,
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductPage(
                          image: image, title: title, subtitle: subtitle, price: price, desc: desc,
                        ),
                        ), 
                      ),
                    ),
                  ),
                  )
                  ,
                  Text(
                    "$title",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    "$subtitle",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 6,),
                  RatingBar.builder(
                    initialRating: star.toDouble(),
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4,),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹ $price",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 28,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}