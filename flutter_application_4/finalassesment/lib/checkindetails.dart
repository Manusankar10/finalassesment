import 'package:finalassesment/completepage.dart';
import 'package:flutter/material.dart';

class Checkindetails extends StatefulWidget {
  const Checkindetails({super.key});

  @override
  State<Checkindetails> createState() => _CheckindetailsState();
}

class _CheckindetailsState extends State<Checkindetails> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  TextEditingController special = TextEditingController();
  _onefield(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 50,
        width: 300,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: 'Crib might be required.'),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
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
              padding: const EdgeInsets.only(right: 22.74),
              child: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(255, 153, 115, 23),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Check In',
                  style: TextStyle(fontFamily: 'Clan', fontSize: 26),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Please review and confirm the below information to\n                 complete the Check in process',
                  style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
                height: 280,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 17, top: 20),
                          child: Text(
                            'Booking Details',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 25.65,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 190),
                          child: Column(
                            children: [
                              Icon(
                                Icons.expand_less,
                                size: 30,
                                color: Color.fromARGB(255, 153, 115, 23),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 29,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 30),
                      child: Row(
                        children: [
                          Text(
                            'Confirmation No\n1000123453',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17, top: 18.57),
                      child: Row(
                        children: [
                          Text(
                            'No.of Adults\n2',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          ),
                          SizedBox(
                            width: 103,
                          ),
                          Row(
                            children: [
                              Text(
                                'No. of children\n2',
                                style:
                                    TextStyle(fontSize: 12, fontFamily: 'Clan'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 18.57),
                      child: Row(
                        children: [
                          Text(
                            'Check-in Date\n18 Jan, 2022',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          ),
                          SizedBox(
                            width: 95,
                          ),
                          Row(
                            children: [
                              Text(
                                'Checkout Date\n20 Jan, 2022',
                                style:
                                    TextStyle(fontFamily: 'Clan', fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 18.57),
                      child: Row(
                        children: [
                          Text(
                            'Room Rate\nBed and Breakfast',
                            style: TextStyle(fontFamily: 'clan', fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
                height: 330,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 17, top: 20),
                        child: Text(
                          'Primary Guest Information',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        height: 25.65,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 115),
                        child: Column(
                          children: [
                            Icon(
                              Icons.expand_less,
                              size: 30,
                              color: Color.fromARGB(255, 153, 115, 23),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.65,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Row(
                          children: [
                            Text(
                              'First Name\nSteven',
                              style:
                                  TextStyle(fontFamily: 'Clan', fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Row(
                        children: [
                          Text(
                            'Last Name\nBradley',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          'Date of Brith\n01 jan 1992',
                          style: TextStyle(fontSize: 12, fontFamily: 'Clan'),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Row(
                          children: [
                            Text(
                              'Nationality\nUAE',
                              style:
                                  TextStyle(fontFamily: 'Clan', fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          'Email\nAlice@gmail.com',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          'Country\nUnited Arab Emirates',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          'Company\nNA',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        )
                      ],
                    ),
                  )
                ])),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 250,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 23.11),
                    child: Row(
                      children: [
                        Text(
                          'Information ( Purpose of stay )',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Checkbox(
                            value: this._value1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            activeColor: Color.fromARGB(255, 153, 115, 23),
                            onChanged: ((value) {
                              setState(() {
                                this._value1 = value!;
                              });
                            })),
                      ),
                      Row(
                        children: [
                          Text(
                            'Bussiness / work',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Checkbox(
                            value: this._value2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            activeColor: Color.fromARGB(255, 153, 115, 23),
                            onChanged: ((value) {
                              setState(() {
                                this._value2 = value!;
                              });
                            })),
                      ),
                      Row(
                        children: [
                          Text(
                            'Meeting / Corporate Event',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Checkbox(
                            value: this._value3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            activeColor: Color.fromARGB(255, 153, 115, 23),
                            onChanged: ((value) {
                              setState(() {
                                this._value3 = value!;
                              });
                            })),
                      ),
                      Row(
                        children: [
                          Text(
                            'Quarantine',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Checkbox(
                            value: this._value4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            activeColor: Color.fromARGB(255, 153, 115, 23),
                            onChanged: ((value) {
                              setState(() {
                                this._value4 = value!;
                              });
                            })),
                      ),
                      Row(
                        children: [
                          Text(
                            'Social Event',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 90,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 23.11),
                    child: Row(
                      children: [
                        Text(
                          'Personalization',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Early Check-In 1 pm',
                          style: TextStyle(
                            fontFamily: 'Clan',
                            fontSize: 12,
                          ),
                        ),
                        Text('USD 125',
                            style: TextStyle(fontFamily: 'Clan', fontSize: 12))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
                height: 80,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 23.11),
                    child: Row(
                      children: [
                        Text(
                          'Settlement',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      children: [
                        Text(
                          'Mastercard',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        )
                      ],
                    ),
                  )
                ])),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 140,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 23.11),
                    child: Row(
                      children: [
                        Text(
                          'Requests',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 24.06),
                    child: Row(
                      children: [
                        Text(
                          'Do you have any special requests?',
                          style: TextStyle(fontFamily: 'Clan', fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [_onefield(special)],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Checkbox(
                      value: this._value5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      activeColor: Color.fromARGB(255, 153, 115, 23),
                      onChanged: ((value) {
                        setState(() {
                          this._value5 = value!;
                        });
                      })),
                  Expanded(
                    child: RichText(
                      softWrap: true,
                      maxLines: 4,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'I have read, understood and agree to the ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Clan')),
                          TextSpan(
                              text: 'Booking & Cancellation Policies',
                              style: TextStyle(
                                color: Color.fromARGB(255, 153, 115, 23),
                                fontSize: 12,
                                fontFamily: 'Clan',
                              )),
                          TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Clan',
                              )),
                          TextSpan(
                              text: 'Terms & Conditions and Privacy Laws',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 153, 115, 23),
                                  fontFamily: 'Clan',
                                  fontSize: 12))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.47,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Guest Signature',
                  style: TextStyle(fontFamily: 'Clan', fontSize: 12),
                ),
                Text('Clear',
                    style: TextStyle(fontFamily: 'Clan', fontSize: 12))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              height: 150,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 248, 247, 247)),
              child: Center(child: Image.asset('assets/images/sign.png')),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: (() {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Checkindetails()));
            }),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 153, 115, 23),
                  ),
                  child: Center(
                    child: Text(
                      'Check-IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Clan',
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ])));
  }
}
