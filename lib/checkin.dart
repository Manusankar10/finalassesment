import 'dart:convert';
import 'dart:ui';

import 'package:finalassesment/aboutstay.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'bookingdetail.dart';
import 'package:http/http.dart' as http;

class CheckInScreen extends StatefulWidget {
  CheckInScreen({Key? key}) : super(key: key);

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  TextEditingController confirmationNo = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController arriveDate = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, actions: [
        IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 153, 115, 23),
            ))
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Check In',
            style: TextStyle(fontFamily: 'clanot', fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Please fill your details',
            style: TextStyle(fontFamily: 'clanot', fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          inputButtonWidget('Confirmation ID', confirmationNo, null),
          inputButtonWidget('Last Name', lastName, null),
          inputButtonWidget(
              'Arrival Date',
              arriveDate,
              IconButton(
                  onPressed: (() {
                    _selectDate(context);
                  }),
                  icon: Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 153, 115, 23),
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: 150,
        child: Column(
          children: [
            commonButtonwidget(Color.fromARGB(255, 153, 115, 23),
                'FIND MY BOOKING', Colors.white, true),
            commonButtonwidget(Colors.white, 'Cancel', Colors.black, false),
          ],
        ),
      ),
    );
  }

  void _getData(String conf, String lastName, String arriveDate) async {
    var respones = await http.get(Uri.parse(
        'http://43.205.99.251:8000/booking/hotel/82923932/details/890980?lastName=test&arrivalDateRequired=no'));

    if (respones.statusCode == 200) {
      Map<String, dynamic> datas = json.decode(respones.body);
      BookingDetails bookingDetails = BookingDetails.fromJson(datas);
      // data = datas;
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (_) => Aboutstay(
                  jsonObj: bookingDetails.bookingdata!,
                )),
      );
    } else if (respones.statusCode == 400) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Record not found')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Something went a wrong. Try Again')));
    }
  }

  _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );

    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
        arriveDate.text = DateFormat('dd/MM/yyyy').format(selectedDate);
        ;
      });
    }
  }

  commonButtonwidget(
      Color bgColor, String title, Color titleColor, bool isClick) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 10),
      child: GestureDetector(
        onTap: () {
          if (isClick) {
            if (confirmationNo.text.isNotEmpty &&
                lastName.text.isNotEmpty &&
                arriveDate.text.isNotEmpty) {
              _getData(confirmationNo.text, lastName.text, arriveDate.text);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Enter All Required fields')));
            }
          }
        },
        child: Container(
          height: 50,
          color: bgColor,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: titleColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  inputButtonWidget(
      String title, TextEditingController controller, IconButton? suffixIcon) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: 'clanot', fontSize: 10),
          ),
          TextFormField(
            controller: controller,
            onTap: () {
              if (suffixIcon != null) {
                //
                _selectDate(context);
              }
            },
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
/**
class Checkin extends StatefulWidget {
  const Checkin({super.key});

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  void _getData(String conf, String lastName, String arriveDate) async {

    var respones = await http.get(Uri.parse(
        'http://43.205.99.251:8000/booking/hotel/82923932/details/890980?lastName=test&arrivalDateRequired=no'));

    if (respones.statusCode == 200) {
      Map<String, dynamic> datas = json.decode(respones.body);
      BookingDetails bookingDetails = BookingDetails.fromJson(datas);
      // data = datas;
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (_) => Aboutstay(
                    jsonObj: bookingDetails.bookingdata!,
                  )),
          (route) => false);
    } else if (respones.statusCode == 400) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Record not found')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Something went a wrong. Try Again')));
    }
  }

  TextEditingController Arrival_date = TextEditingController();
  DateTime Selectdate = DateTime.now();
  Future<DateTime> _date(BuildContext context) async {
    final datelc = await showDatePicker(
      context: context,
      initialDate: Selectdate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Color.fromARGB(255, 153, 115, 23),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 153, 115, 23), // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (datelc != null && datelc != Selectdate) {
      setState(() {
        Selectdate = datelc;
      });
      Arrival_date.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
      FocusManager.instance.primaryFocus?.unfocus();
    } else {
      Arrival_date.text = '';

      FocusManager.instance.primaryFocus?.unfocus();
    }
    return Selectdate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
          Padding(padding: EdgeInsets.only(left: 30)),
          Text(
            'Check In',
            style: TextStyle(fontFamily: 'clanot', fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please Fill Your Details',
                style: TextStyle(fontFamily: 'clanot', fontSize: 12),
              )
            ],
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
                    'Confirmation ID',
                    style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: TextFormField(
                  controller: confirm,
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
                  'Arrival Date',
                  style: TextStyle(
                    fontFamily: 'clanot',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: TextFormField(
                  controller: Arrival_date,
                  decoration: InputDecoration(
                      labelText: '',
                      hintText: '',
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(255, 153, 115, 23),
                          ),
                          onPressed: () {
                            _date(context);
                          }))),
            )
          ])),
          SizedBox(
            height: 200,
          ),
          SizedBox(
            height: 46,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                if (Arrival_date.text.isNotEmpty && )
              },
              child: Text(
                'FIND MY BOOKING',
                style: TextStyle(fontSize: 15, fontFamily: 'clanot'),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 153, 115, 23))),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              'Cancel',
              style: TextStyle(fontFamily: 'clanot', fontSize: 15),
            ),
          )
        ]))));
  }
}
*/