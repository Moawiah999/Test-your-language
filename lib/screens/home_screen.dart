import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'informationtest.dart';

class Home_screens extends StatefulWidget {
  const Home_screens({super.key});

  @override
  State<Home_screens> createState() => _Home_screensState();
}

class _Home_screensState extends State<Home_screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.account_circle, size: 35),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.cyanAccent, Colors.green],
              begin: Alignment.center,
              end: Alignment.bottomCenter),
        ),
        child: ListView(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 120,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage("image/moawiahomar.jpg"),
              ),
              foregroundColor: Colors.amber,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "moawiah@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 16, 22, 0),
                    width: 2,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Spacer(flex: 1),
                  Column(
                    children: [
                      Card(
                        color: Colors.greenAccent,
                        child: Icon(Icons.chat, size: 70),
                      ),
                      Text(
                        "English chat",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      Card(
                        color: Colors.greenAccent,
                        child: Icon(
                          Icons.note,
                          size: 70,
                        ),
                      ),
                      Text(
                        "Notes",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                PageTransition(
                                  ////////
                                  child: Information_Test(),
                                  type: PageTransitionType.leftToRight,
                                ));
                          });
                        },
                        child: Card(
                          color: Colors.greenAccent,
                          child: Icon(Icons.menu_book, size: 70),
                        ),
                      ),
                      Text(
                        "the study",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), backgroundColor: Colors.black),
                    onPressed: () {},
                    child: Text(
                      "Learn how to use the app",
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
