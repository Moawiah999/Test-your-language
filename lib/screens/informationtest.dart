import 'package:flutter/material.dart';
import 'package:country_icons/country_icons.dart';
import 'package:myappstest/screens/test_english.dart';

class Information_Test extends StatefulWidget {
  const Information_Test({super.key});

  @override
  State<Information_Test> createState() => _Information_TestState();
}

class _Information_TestState extends State<Information_Test> {
  List LanguageList = ["English", "German", "French", "Turki"];
  List medialist = [
    "image/English.jpg",
    "image/German.png",
    "image/French.jpg",
    "image/Turki.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test your level in "),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.amber, Colors.cyanAccent, Colors.black38],
              begin: Alignment.bottomLeft),
        ),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${LanguageList[i]}"),
              leading: Container(
                width: 30,
                height: 40,
                child: Image(
                  image: AssetImage("${medialist[i]}"),
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  if (LanguageList[i] == "English") {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Test_English();
                          },
                        ),
                      );
                    });
                  }
                },
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
