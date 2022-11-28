import 'package:flutter/material.dart';

class Completepage extends StatefulWidget {
  const Completepage({super.key});

  @override
  State<Completepage> createState() => _CompletepageState();
}

class _CompletepageState extends State<Completepage> {
  int currentIndex = 0;
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
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tick.png',
                  height: 50,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Check In Complete',
                  style: TextStyle(fontFamily: 'clanot', fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Your room type is',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sofitel Suite',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(height: 40),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Your device has been activated \n for the duration of your stay.',
                        style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Please check-in at the hotel before 3.00 pm',
                              style:
                                  TextStyle(fontFamily: 'clanot', fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 46,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'ADD DEVICE',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'clanot',
                          color: Colors.grey),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(children: [
                  Text(
                    'Share in-room functionalities\n with other room guests',
                    style: TextStyle(fontFamily: 'clanot', fontSize: 12),
                  )
                ])
              ],
            ),
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(
              255,
              41,
              31,
              29,
            ),
            selectedItemColor: Colors.yellow,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: 'Hotel Info', icon: Icon(Icons.location_on)),
              BottomNavigationBarItem(
                  label: 'Book', icon: Icon(Icons.date_range)),
              BottomNavigationBarItem(
                  label: 'Check-in', icon: Icon(Icons.card_travel_rounded)),
              BottomNavigationBarItem(
                  label: 'Chat', icon: Icon(Icons.chat_bubble_outline_rounded)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.menu)),
            ]));
  }
}
