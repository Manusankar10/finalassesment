import 'package:finalassesment/completepage.dart';
import 'package:flutter/material.dart';

class Checkindetails extends StatefulWidget {
  const Checkindetails({super.key});

  @override
  State<Checkindetails> createState() => _CheckindetailsState();
}

class _CheckindetailsState extends State<Checkindetails> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;

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
                child: Column(children: [
          Text(
            'Check In',
            style: TextStyle(fontFamily: 'clanot', fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              ' Please review and confirm the below information to\n    complete the Check In process.',
              style: TextStyle(fontFamily: 'clanot', fontSize: 12),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 279,
            width: 333,
            color: Colors.grey.shade200,
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17, top: 10),
                        child: Text(
                          'Booking Details',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_less,
                            color: Color.fromARGB(255, 153, 115, 23),
                            size: 35,
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Confirmation No',
                          style: TextStyle(fontFamily: 'clanot', fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      '1000123453',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('No.of Adults',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('No.of Children',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text('2',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Text('2',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('Check-in Date',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Row(
                        children: [
                          Text('Checkout Date',
                              style:
                                  TextStyle(fontFamily: 'clanot', fontSize: 12))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('18 Jan, 2022',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Row(
                        children: [
                          Text('20 Jan, 2022',
                              style:
                                  TextStyle(fontFamily: 'clanot', fontSize: 12))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 230),
                        child: Text('Room Rate',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 190),
                        child: Text('Bed and Breakfast',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 12)),
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 380,
              width: 333,
              color: Colors.grey.shade200,
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Primary Guest Information',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.expand_less,
                              color: Color.fromARGB(255, 153, 115, 23),
                              size: 35,
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('First Name',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('Last Name',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12)),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Steven',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text('Bradley',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Date of Birth',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Text('Nationality',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text('01 jan 1990',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Row(
                          children: [
                            Text('UAE',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 270),
                          child: Text('Email',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 170),
                          child: Text('Steve@gmail.com',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 250),
                          child: Text('Country',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 160),
                          child: Text('United Arab Emirates',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 250),
                          child: Text('Company',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text('Overseas Workers Welfare Administration',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    )
                  ],
                )
              ])),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 380,
              width: 333,
              color: Colors.grey.shade200,
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Secondary Guest Information',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.expand_less,
                              color: Color.fromARGB(255, 153, 115, 23),
                              size: 35,
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('First Name',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text('Last Name',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12)),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Alice',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text('Bradley',
                                  style: TextStyle(
                                      fontFamily: 'clanot', fontSize: 12)),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Date of Birth',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Text('Nationality',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('01 jan 1992',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Text('UAE',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Text('Email',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 190),
                          child: Text('Alice@gmail.com',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Text('Country',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 180),
                          child: Text('United Arab Emirates',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Text('Company',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 220,
                          ),
                          child: Text('NA',
                              style: TextStyle(
                                  fontFamily: 'clanot', fontSize: 12)),
                        )
                      ],
                    )
                  ],
                )
              ])),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 245,
            width: 333,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 90),
                  child: Text(
                    'Information(Purpose of stay)',
                    style: TextStyle(fontFamily: 'clanot'),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromARGB(255, 153, 115, 23),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        }),
                    Text(
                      'Business / work',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromARGB(255, 153, 115, 23),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        }),
                    Text('Meeting / Corporate Event',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12))
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromARGB(255, 153, 115, 23),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        }),
                    Text('Quarantine',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12))
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromARGB(255, 153, 115, 23),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value2;
                          });
                        }),
                    Text('Social Event',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 90,
              width: 333,
              color: Colors.grey.shade200,
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Personalization',
                            style:
                                TextStyle(fontFamily: 'clanot', fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Early Check-In 1pm',
                                style: TextStyle(
                                    fontFamily: 'clanot', fontSize: 12)),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text('USD 125',
                                    style: TextStyle(
                                        fontFamily: 'clanot', fontSize: 12)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.grey.shade200,
            height: 87.43,
            width: 333,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text('Settlement',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Mastercard',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 14)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 134.02,
            color: Colors.grey.shade200,
            width: 333,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Requests',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 12)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Do you have any special requests?',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 10)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text('Crib might be required.',
                      style: TextStyle(fontFamily: 'clanot', fontSize: 13)),
                ),
                Divider(
                  height: 20,
                  indent: 32,
                  endIndent: 42,
                  thickness: 2,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                  activeColor: Color.fromARGB(255, 153, 115, 23),
                  value: this.value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value1;
                    });
                  }),
              SizedBox(
                width: 10,
              ),
              Text(
                'I have read, understood and agree to the\n Booking & Cancellation Policies and\n Terms & Conditions and Privacy Laws',
                style: TextStyle(fontSize: 10, fontFamily: 'clanot'),
              )
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'Guest Signature',
                  style: TextStyle(fontSize: 12, fontFamily: 'clanot'),
                ),
              ),
              SizedBox(
                width: 200,
              ),
              Text(
                'Clear',
                style: TextStyle(fontSize: 12, fontFamily: 'clanot'),
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 320,
            color: Colors.grey.shade200,
            child: Image.asset(
              'assets/images/sign.png',
              height: 5,
            ),
          ),
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
                  MaterialPageRoute(builder: (context) => Completepage()),
                );
              },
              child: Text(
                'CHECK IN',
                style: TextStyle(fontSize: 15, fontFamily: 'clanot'),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 153, 115, 23))),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ]))));
  }
}
