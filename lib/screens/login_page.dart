import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:myappstest/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class Login_Page extends StatefulWidget {
  Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  String youremail = "moawiah@123.com";
  String Password = "1234";
  final myemail = TextEditingController();
  final myPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.center,
          colors: [
            Colors.white12,
            Colors.greenAccent,
            Color.fromARGB(255, 26, 2, 0)
          ],
        )),
        alignment: Alignment.center,
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText(
                    'improve yourself',
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "SnowburstOne"),
                  ),
                  TyperAnimatedText(
                    'Do not stop',
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "SnowburstOne"),
                  ),
                ]),
                SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    color: Colors.white12,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: myemail,
                    onSubmitted: (val) {
                      val = youremail;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'your email',
                        counterStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.white12,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: myPassword,
                    onSubmitted: (valtow) {
                      valtow = Password;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                              child: Home_screens(),
                              type: PageTransitionType.leftToRight,
                            ));
                        if (youremail == myemail.text &&
                            Password == myPassword.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Home_screens();
                              },
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Error in password or email"),
                            duration: Duration(seconds: 5),
                          ));
                        }
                      });
                    },
                    child: Text('Button'),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: Container(
                    width: 100,
                    height: 50,
                    child: Lottie.asset("assetanimation/loginicon.json"),
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
