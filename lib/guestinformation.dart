import 'package:finalassesment/bookingdetail.dart';
import 'package:finalassesment/identityverification.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/services.dart';

class Guestinfo extends StatefulWidget {
  Guestinfo({super.key, required this.jsonobj});

  Bookingdata jsonobj;

  @override
  State<Guestinfo> createState() => _GuestinfoState();
}

class _GuestinfoState extends State<Guestinfo> {
  @override
  var article;

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
                      'Guest Information',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Please review and update all guest information',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 123,
                      width: 333,
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text(
                              'Primary Guest Information',
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
                                  'Steven Bradely',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Text(
                                  'stevenbradely@gmail.com',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Text(
                                  '+65 1234 5678',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        height: 450,
                        width: 333,
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Container(
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(right: 60, top: 10),
                              child: Text(
                                'Accompanying Guest Information',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Text(
                                  'First Name',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                              width: 250,
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: '', hintText: '')),
                            ),
                            Container(
                              child: Column(children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Text(
                                      'Last Name',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 250,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: '', hintText: '')),
                                ),
                              ]),
                            ),
                            Container(
                              child: Column(children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 250,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: '', hintText: '')),
                                ),
                              ]),
                            ),
                            Container(
                              child: Column(children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Text(
                                      'Phone No',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 250,
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: '', hintText: '')),
                                ),
                              ]),
                            ),
                          ]),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 46,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => identifyVerification(
                                      jsonobj: this.widget.jsonobj,
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
                    SizedBox(
                      height: 60,
                    )
                  ])),
            ),
          ),
        ));
  }
}
