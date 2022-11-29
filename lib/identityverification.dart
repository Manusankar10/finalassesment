import 'dart:convert';

import 'package:finalassesment/bookingdetail.dart';
import 'package:finalassesment/cardconfirmation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class identifyVerification extends StatefulWidget {
  identifyVerification({super.key, required this.jsonobj});
  Bookingdata jsonobj;
  @override
  State<identifyVerification> createState() => _identifyVerificationState();
}

class _identifyVerificationState extends State<identifyVerification> {
  TextEditingController Doc = TextEditingController();
  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController documentnumber = TextEditingController();
  TextEditingController documentissuedate = TextEditingController();
  TextEditingController documentexpirydate = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController Phone = TextEditingController();
  int value1 = 0;
  List datas = [];
  _fieldsIdentify(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 30,
        width: 300,
        child: TextFormField(
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'please enter the value';
            }
            return null;
          },
        ),
      ),
    );
  }

  void _getdata() async {
    var response = await http.get(Uri.parse(
        'http://43.205.99.251:8000/booking/hotel/82923932/1234/document'));

    if (response.statusCode == 200) {
      Map data1 = json.decode(response.body);
      setState(() {
        datas = data1["data"];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _getdata();
  }

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
          Padding(
              padding: EdgeInsets.only(right: 22.74),
              child: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(255, 153, 115, 23),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 23.12,
              ),
              Column(
                children: [
                  Text(
                    'Identity Verification',
                    style: TextStyle(fontFamily: 'clanot', fontSize: 20),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Text(
                        '  Upload your travel document to verify your Identity.\nwe do not share this information with external sources.',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: Doc,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      decoration: InputDecoration(
                          labelText: 'DOC TYPE',
                          suffixIcon: IconButton(
                            onPressed: () {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                      builder: (context, setstate) {
                                    return Container(
                                      height: 465,
                                      color: Colors.white,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text(
                                              'Document Type',
                                              style: TextStyle(
                                                  fontFamily: 'clanot',
                                                  fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 35,
                                            ),
                                            Container(
                                              height: 240,
                                              child: ListView.builder(
                                                  itemCount: datas.length,
                                                  itemBuilder:
                                                      ((context, index) {
                                                    return RadioListTile(
                                                      value: index,
                                                      groupValue: value1,
                                                      onChanged: ((value) {
                                                        value1 = index;
                                                      }),
                                                      title: Text(
                                                        datas[index]["name"],
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'clanot',
                                                            fontSize: 12),
                                                      ),
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .trailing,
                                                      activeColor:
                                                          Color.fromARGB(255,
                                                              153, 115, 23),
                                                    );
                                                  })),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            InkWell(
                                              child: Center(
                                                  child: Container(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.85,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 153, 115, 23),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'DONE',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'clanot',
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )),
                                              onTap: () {
                                                Doc.text =
                                                    datas[value1]['name'];
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                                },
                              );
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.expand_more,
                                color: Color.fromARGB(255, 153, 115, 23),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    width: 295,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 247, 247)),
                    child: Container(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Icon(
                              Icons.document_scanner_rounded,
                              size: 60,
                              color: Color.fromARGB(255, 153, 115, 23),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Scan Travel \n Document',
                              style: TextStyle(fontFamily: 'clanot'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'First Name',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'clanot',
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(Firstname)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Last Name',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(Lastname)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Date of Birth',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(dateofbirth)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Document Number',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(documentnumber)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Document Issue Date',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(documentissuedate)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Document Expiry Date',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(documentexpirydate)],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            'Country',
                            style:
                                TextStyle(fontSize: 12, fontFamily: 'clanot'),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [_fieldsIdentify(country)],
                  ),
                  SizedBox(
                    height: 26.49,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => Cardconfirm(
                                jsonobj: this.widget.jsonobj,
                              )));
                    }),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 153, 115, 23),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Clan',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
