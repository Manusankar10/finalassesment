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
  var value;
  _modelPopup(BuildContext context) {
    return showModalBottomSheet<void>(
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
                    style: TextStyle(fontFamily: 'clanot', fontSize: 16),
                  )),
                  SizedBox(
                    height: 60,
                  ),
                  RadioListTile(
                    value: 101,
                    groupValue: value,
                    onChanged: (vu) {
                      setState(() {
                        value = 101;
                      });
                    },
                    activeColor: Color.fromARGB(255, 153, 115, 23),
                    title: Text('Driving License'),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RadioListTile(
                    value: 102,
                    groupValue: value,
                    onChanged: (value) {
                      setState(() {
                        value = 102;
                      });
                    },
                    activeColor: Color.fromARGB(255, 153, 115, 23),
                    title: Text('Passport'),
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (value == 100) {
                          setState(() {
                            doctype.text = 'Driving License';
                          });
                        } else {
                          setState(() {
                            doctype.text = 'Passport';
                          });
                        }
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(fontSize: 15, fontFamily: 'clanot'),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 153, 115, 23))),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
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
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    child: TextFormField(
                        controller: doctype,
                        onTap: () {
                          _modelPopup(context);
                        },
                        decoration: InputDecoration(
                            labelText: 'DOC TYPE',
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.expand_more,
                                color: Color.fromARGB(255, 153, 115, 23),
                              ),
                              onPressed: () {
                                _modelPopup(context);
                              },
                            ))),
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'First Name',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Last Name',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Date of Birth',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Document No',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Document Issue Date',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Document Expiry Date',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15, top: 30),
                          child: Row(
                            children: [
                              Text(
                                'Country',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12),
                              ),
                              Text('*',
                                  style: TextStyle(
                                      fontFamily: 'clanot',
                                      fontSize: 20,
                                      color: Colors.red))
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: Container(
                          height: 40,
                          child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: '', hintText: '')),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cardconfirm()),
                              );
                            },
                            child: Text(
                              'NEXT',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'clanot'),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 153, 115, 23))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
