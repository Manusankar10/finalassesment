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
  late Bookingdata bookingdata;
  // String convertDateTime(String DateTime) {
  //   DateTime tempDate = DateFormat("yyy-MM-ddthh:mm:ss").parse(DateTime);
  //   String dates = DateFormat('dd MMM,yyyy').format(template);
  //   return dates;
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bookingdata = this.widget.jsonObj!;
  }

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
                            (bookingdata.details!.contactPerson?.firstName)
                                    .toString() +
                                ' ' +
                                (bookingdata.details!.contactPerson?.lastName)
                                    .toString(),
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
                            'Booking ID:',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          ),
                          Text(
                            (bookingdata.uniqueBookingId.toString()),
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                            width: 40,
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
                            (bookingdata.details!.checkInDate.toString()),
                            style: TextStyle(
                              fontFamily: 'clanot',
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 78,
                          ),
                          Text(
                            (bookingdata.details!.checkOutDate.toString()),
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
                            "Nights:  ",
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12),
                          ),
                          Text(
                            (bookingdata.details!.nightCount.toString()),
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
                          'Hotel:  ',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                        Text(
                          (bookingdata.details!.hotelName.toString()),
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
                          'Guest:  ',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                        Text(
                          (bookingdata.details!.totalGuestCount.toString()),
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
                          'Email:  joe.test@gmail.com',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                              (bookingdata.roomTypes![0].name.toString()),
                              style:
                                  TextStyle(fontFamily: 'clanot', fontSize: 12),
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
                                  (bookingdata.roomTypes![0].code.toString()),
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
                                builder: (context) => Guestinfo(
                                      jsonobj: this.widget.jsonObj,
                                    )),
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
