import 'dart:ui';

import 'package:finalassesment/cardconfirmation.dart';
import 'package:flutter/material.dart';

class Identity extends StatefulWidget {
  const Identity({super.key});

  @override
  State<Identity> createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  TextEditingController doctype = TextEditingController();
  var value1;
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
            child: Center(
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              Text(
                'Identity Verification',
                style: TextStyle(fontFamily: 'clanot', fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Upload your travel document to verify your identity.\n We do not share this information with external sources.',
                style: TextStyle(fontFamily: 'clanot', fontSize: 12),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextFormField(
                    controller: doctype,
                    decoration: InputDecoration(
                        labelText: 'DOC TYPE',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.expand_more,
                            color: Color.fromARGB(255, 153, 115, 23),
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 400,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Column(
                                        children: [
                                          Center(
                                              child: Text(
                                            'Document Type',
                                            style: TextStyle(
                                                fontFamily: 'clanot',
                                                fontSize: 16),
                                          )),
                                          SizedBox(
                                            height: 60,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 66,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 17),
                                                child: Text(
                                                  'Driving License',
                                                  style: TextStyle(
                                                      fontFamily: 'clanot'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 155,
                                              ),
                                              Radio(
                                                value: 100,
                                                groupValue: value1,
                                                onChanged: (value) {
                                                  setState(() {
                                                    value1 = 100;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                          Divider(
                                            height: 20,
                                            thickness: 1,
                                            endIndent: 30,
                                            indent: 20,
                                          ),
                                          SizedBox(
                                            height: 20,
                                            width: 17,
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 17),
                                                child: Text(
                                                  'Passport',
                                                  style: TextStyle(
                                                      fontFamily: 'clanot'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 200,
                                              ),
                                              Radio(
                                                value: 102,
                                                groupValue: value1,
                                                onChanged: (value) {
                                                  value1 = 102;
                                                },
                                              )
                                            ],
                                          ),
                                          Divider(
                                            height: 20,
                                            thickness: 1,
                                            endIndent: 30,
                                            indent: 20,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: SizedBox(
                                          height: 46,
                                          width: 300,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                if (value1 == 100) {
                                                  doctype.text =
                                                      'Driving License';
                                                } else {
                                                  doctype.text = 'Passport';
                                                }
                                              });
                                            },
                                            child: Text(
                                              'Done',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'clanot'),
                                            ),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Color.fromARGB(255, 153,
                                                            115, 23))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 285,
                color: Colors.grey.shade200,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/images/scan.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Scan Travel \nDocument',
                    style: TextStyle(fontFamily: 'clanot', fontSize: 14),
                  )
                ]),
              ),
              Container(
                  child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Text(
                      'First Name',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextFormField(
                      decoration: InputDecoration(labelText: '', hintText: '')),
                ),
                Container(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'Last Name',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                          decoration:
                              InputDecoration(labelText: '', hintText: '')),
                    )
                  ],
                )),
                Container(
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'Date of Birth',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                          decoration:
                              InputDecoration(labelText: '', hintText: '')),
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
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'Document Number',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                          decoration:
                              InputDecoration(labelText: '', hintText: '')),
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
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'Document Issue Date',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                          decoration:
                              InputDecoration(labelText: '', hintText: '')),
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
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Text(
                          'Country',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: TextFormField(
                          decoration:
                              InputDecoration(labelText: '', hintText: '')),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 46,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cardconfirm()),
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
                  height: 100,
                )
              ]))
            ])))));
  }
}
