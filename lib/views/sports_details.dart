import 'package:avahanapp/views/cricket_details.dart';
import 'package:avahanapp/views/football_details.dart';
import 'package:avahanapp/views/register_form.dart';
import 'package:avahanapp/views/volleyball_details.dart';
import 'package:avahanapp/views/tow_details.dart';
import 'package:avahanapp/views/throwball_details.dart';
import 'package:avahanapp/views/kabaddi_details.dart';
import 'package:avahanapp/views/footv_details.dart';
import 'package:avahanapp/views/athlectics_details.dart';
import 'package:flutter/material.dart';

class sportsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sports Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 150,
                width: 470,
                child: Image.asset('assets/sdetails.jpg', fit: BoxFit.cover),
              ),
              SizedBox(
                height: 20,
              ),
              Text('All sports'),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Cricket', style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/cricketicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  cricketDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Football',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/footballicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  footballDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        // Container(
                        //   height: 190,
                        //   width: 160,
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //           child: Image.asset(
                        //         'assets/sdetails.jpg',
                        //       ))
                        //     ],
                        //   ),
                        //   // color: Color.fromARGB(255, 255, 65, 7),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //2nd row
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('VolleyBall',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/volleyicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  volleyDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Foot-Volley',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/footvicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  footvDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //3rd row
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('ThrowBall',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/tbicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  tbDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Tug of War',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/towicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  towDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //4th row
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('kabaddi', style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/kbicon.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  kabaddiDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                )
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 190,
                            width: 160,
                            color: Color.fromARGB(255, 242, 239, 232),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Athletics',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Image.asset(
                                    'assets/run.png',
                                    fit: BoxFit.fitWidth,
                                    height: 100,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextButton(
                                    child: Text(
                                      'view details',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  athleticsDetails()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor:
                                            Color.fromARGB(255, 254, 254, 254),
                                        elevation: 2,
                                        backgroundColor:
                                            Color.fromARGB(255, 226, 30, 30)),
                                  ),
                                ),
                              ],
                              // margin: EdgeInsets.only(top: 500),
                            ),

                            // color: Color.fromARGB(255, 7, 90, 255),
                          ),
                        ),
                        // Container(
                        //   height: 190,
                        //   width: 160,
                        //   child: Column(
                        //     children: [
                        //       Container(
                        //           child: Image.asset(
                        //         'assets/sdetails.jpg',
                        //       ))
                        //     ],
                        //   ),
                        //   // color: Color.fromARGB(255, 255, 65, 7),
                        // ),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 20),
                      child: TextButton(
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => registrationform()));
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 254, 254, 254),
                            elevation: 2,
                            backgroundColor: Color.fromARGB(255, 8, 8, 8)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
            // child: ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text('Home!'),
            // ),
          ),
        ));
  }
}
