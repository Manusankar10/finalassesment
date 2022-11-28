import 'package:finalassesment/checkindetails.dart';
import 'package:flutter/material.dart';

class Cardconfirm extends StatefulWidget {
  const Cardconfirm({super.key});

  @override
  State<Cardconfirm> createState() => _CardconfirmState();
}

class _CardconfirmState extends State<Cardconfirm> {
  bool value = false;

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
          Center(
            child: Text(
              'Card Confirmation',
              style: TextStyle(fontFamily: 'clanot', fontSize: 20),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 200,
            width: 333,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Card Details',
                    style: TextStyle(fontFamily: 'clanot', fontSize: 16),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 153, 115, 23),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        'Card Number',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        '**** **** **** 3120',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Card Holder Name',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Steven Bradely',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'CARD TYPE',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'VISA',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  children: [
                    Checkbox(
                        activeColor: Color.fromARGB(255, 153, 115, 23),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        }),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Your card used during booking will be\n authorised for incidentals and real-time bill payments.',
                      style: TextStyle(fontSize: 10, fontFamily: 'clanot'),
                    )
                  ],
                )),
                SizedBox(
                  height: 200,
                ),
                SizedBox(
                  height: 46,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Checkindetails()),
                      );
                    },
                    child: Text(
                      'CONFIRM',
                      style: TextStyle(fontSize: 15, fontFamily: 'clanot'),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 153, 115, 23))),
                  ),
                ),
              ],
            ),
          )
        ]))));
  }
}
