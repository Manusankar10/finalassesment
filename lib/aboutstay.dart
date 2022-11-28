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
  // String convertDateTime(String DateTime) {
  //   DateTime tempDate = DateFormat("yyy-MM-ddthh:mm:ss").parse(DateTime);
  //   String dates = DateFormat('dd MMM,yyyy').format(template);
  //   return dates;
  // }

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
}
