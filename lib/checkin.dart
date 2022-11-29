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
        'http://43.205.99.251:8000/booking/hotel/$conf/details/890980?lastName=$lastName&arrivalDateRequired=$arriveDate'));

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: TextStyle(fontFamily: 'clanot', fontSize: 10),
        ),
        TextFormField(
          style: TextStyle(fontFamily: 'clanot', fontSize: 12),
          controller: controller,
          onTap: () {
            if (suffixIcon != null) {
              //
              _selectDate(context);
            }
          },
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              )),
        )
      ]),
    );
  }
}
