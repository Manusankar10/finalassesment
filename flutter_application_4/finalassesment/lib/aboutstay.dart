import 'dart:ui';

import 'package:finalassesment/bookingdetail.dart';
import 'package:finalassesment/guestinformation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Aboutstay extends StatefulWidget {
  Aboutstay({super.key, required this.jsonObj});
  Bookingdata jsonObj;
  @override
  State<Aboutstay> createState() => _AboutstayState();
}

class _AboutstayState extends State<Aboutstay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 153, 115, 23),
              )),
          actions: [
            IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 153, 115, 23),
                ))
          ]),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('About your stay',
                  style: TextStyle(fontFamily: 'clanot', fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text('Please review the below information',
                  style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TRIP DETAILS',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text('Steven Bradley',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Booking ID: 123AKR',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CHECK IN',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 10,
                                      color: Colors.grey.shade600)),
                              SizedBox(
                                height: 5,
                              ),
                              Text("18 May, 2022",
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 14))
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 153, 115, 23),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'CHECK OUT',
                                style: TextStyle(
                                    fontFamily: 'clanot',
                                    fontSize: 10,
                                    color: Colors.grey.shade600),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("20 May, 2022",
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 14))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      commonDetailsList('Nights:', "2"),
                      SizedBox(
                        height: 10,
                      ),
                      commonDetailsList(
                          'Hotel:', "Sofitel philippine plaza manila"),
                      SizedBox(
                        height: 10,
                      ),
                      commonDetailsList('Guests:', "2 Adults / 0 children"),
                      SizedBox(
                        height: 10,
                      ),
                      commonDetailsList('Email:', "steven.badley@gmail.com"),
                      SizedBox(
                        height: 30,
                      ),
                      Text('YOUR ROOM & UPGRADES'),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300,
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              color: Colors.grey.shade100,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('1 X Sofitel Suite',
                                        style: TextStyle(
                                            fontFamily: 'clanot',
                                            fontSize: 16)),
                                    subtitle: Text('City View',
                                        style: TextStyle(
                                            fontFamily: 'clanot',
                                            fontSize: 12)),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color.fromARGB(255, 153, 115, 23),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text("Approx Room Size:",
                                            style: TextStyle(
                                                fontFamily: 'clanot',
                                                fontSize: 12)),
                                      ),
                                      Text("1000 Ft2 | 93 m2",
                                          style: TextStyle(
                                              fontFamily: 'clanot',
                                              fontSize: 12))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Text("Bed Configuration:",
                                            style: TextStyle(
                                                fontFamily: 'clanot',
                                                fontSize: 12)),
                                      ),
                                      Text("King bed",
                                          style: TextStyle(
                                              fontFamily: 'clanot',
                                              fontSize: 12))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    commonButtonwidget(
                      Color.fromARGB(255, 153, 115, 23),
                      'NEXT',
                      Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  commonDetailsList(String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child:
              Text(title, style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
        ),
        Text(subTitle, style: TextStyle(fontFamily: 'clanot', fontSize: 12))
      ],
    );
  }

  commonButtonwidget(Color bgColor, String title, Color titleColor) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 10),
      child: GestureDetector(
        onTap: () {
          //onPressEvent
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Guestinfo()),
          );
        },
        child: Container(
          height: 50,
          color: bgColor,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15, fontFamily: 'clanot', color: titleColor),
            ),
          ),
        ),
      ),
    );
  }
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 153, 115, 23),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Color.fromARGB(255, 153, 115, 23),
                ),
                onPressed: () {},
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About Your Stay',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Please review the below information',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220),
                      child: Text(
                        'TRIP DETAILS',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                      height: 25,
                      thickness: 1,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text(
                            'Steven Bradely',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text(
                            'BOOKING ID:AK123',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'CHECK IN',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 10),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 153, 115, 23),
                                size: 25,
                              )),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'CHECK OUT',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            '20 Dec,2022',
                            style: TextStyle(
                              fontFamily: 'clanot',
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            '22 Dec,2022',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Nights:  2',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Hotel:  Sofitel philippine plaza manila',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Guest:  2Adults/0Children',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Email:  Steve.Bradely@gmail.com',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'YOUR ROOM & UPGRADES',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                      height: 25,
                      thickness: 1,
                    ),
                    Container(
                      height: 123,
                      width: 333,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text(
                              '1 X Sofitel Suite',
                              style:
                                  TextStyle(fontFamily: 'clanot', fontSize: 16),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 153, 115, 23),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Text(
                                  'City View',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: Text(
                                  'Approx Room Size: 1,000 ft2 | 93 m2 \nBed Configuration:  King bed',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 46,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Guestinfo()),
                          );
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontSize: 15, fontFamily: 'clanot'),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 153, 115, 23))),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
  */
}
