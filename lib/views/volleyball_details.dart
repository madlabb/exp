import 'package:flutter/material.dart';

class volleyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('VolleyBall Details'),
              backgroundColor: Colors.blue,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/volleyballmain.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
                  Text('Schedule', style: TextStyle(fontSize: 23)),
                  Divider(
                    color: Color.fromARGB(255, 109, 105, 105),
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        height: 283,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        color: Color.fromARGB(255, 220, 227, 236),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 44,
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text('Date'),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Text('Time'),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Text('Matches'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 205,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.amber,

                              child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color: Color.fromARGB(
                                                    255, 192, 110, 4),
                                                    child: Container(
                                                    padding: EdgeInsets.only(left: 23, top: 35),
                                                    child: Text('20/3/23', style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),),
                                                  ),

                                              ),
                                              
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color:  Color.fromARGB(
                                                    255, 68, 167, 248),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('10:00 am'),
                                                          ),
                                                        ),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('12:00 pm'),
                                                          ),
                                                        ),
                                                        ),
                                                        
                                                      ],
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color: Color.fromARGB(
                                                    255, 68, 167, 248),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('IT vs Mech'),
                                                          ),
                                                        ),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('Civil vs IT'),
                                                          ),
                                                        ),
                                                        ),
                                                        
                                                      ],
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color: Color.fromARGB(
                                                    255, 192, 110, 4),
                                                  child: Container(
                                                    padding: EdgeInsets.only(left: 23, top: 35),
                                                    child: Text('20/3/23', style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),),
                                                    
                                                  ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color: Color.fromARGB(
                                                    255, 68, 167, 248),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('10:00 am'),
                                                          ),
                                                        ),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 14, top: 5),
                                                            child: Text('12:00 pm'),
                                                          ),
                                                        ),
                                                        ),
                                                        
                                                      ],
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Container(
                                                height: 90,
                                                width: 100,
                                                color: Color.fromARGB(
                                                    255, 68, 167, 248),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('Mech vs Aids', style: TextStyle(fontSize: 12),),
                                                          ),
                                                        ),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        ClipRRect(
                                                          borderRadius: BorderRadius.circular(15),
                                                          child: Container(
                                                          height: 30,
                                                          width: 90,
                                                          color: Color.fromARGB(255, 248, 247, 244),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 10, top: 5),
                                                            child: Text('IT vs comps'),
                                                          ),
                                                        ),
                                                        ),
                                                        
                                                      ],
                                                    ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //   SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromARGB(255, 188, 80, 227),
                    child: Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text('venue:\t\t Back Ground', style: TextStyle(color: Color.fromARGB(255, 255, 253, 253)),),
                    ),
                  ),
                  ),
                  ),
                  
                  
                  
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )));
  }
}
