import 'package:finalassesment/identityverification.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/services.dart';

class Guestinfo extends StatefulWidget {
  const Guestinfo({super.key});

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
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
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
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Accompanying Guest Information',
                                        style: TextStyle(
                                            fontFamily: 'clanot', fontSize: 12),
                                      ),
                                      Icon(Icons.arrow_forward_ios,
                                          color:
                                              Color.fromARGB(255, 153, 115, 23))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      'First Name',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 30),
                                  child: Container(
                                    height: 40,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: '', hintText: '')),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 15, top: 30),
                                    child: Text(
                                      'Last Name',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 30),
                                  child: Container(
                                    height: 40,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: '', hintText: '')),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 15, top: 30),
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 30),
                                  child: Container(
                                    height: 40,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: '', hintText: '')),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 15, top: 30),
                                    child: Text(
                                      'Phone No',
                                      style: TextStyle(
                                          fontFamily: 'clanot', fontSize: 12),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 30),
                                  child: Container(
                                    height: 40,
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: '', hintText: '')),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
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
                            MaterialPageRoute(builder: (context) => Identity()),
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
