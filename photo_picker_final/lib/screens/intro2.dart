import 'package:flutter/material.dart';

import 'intro3.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fill,
                image: AssetImage("./assets/pictures/intro2.png"))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset('./assets/pictures/study.png'),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text("Let's join us",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Tropical",
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 25,
            ),
            Text("Collect and Save your"),
            SizedBox(
              height: 10,
            ),
            Text("favorite color palette"),
            SizedBox(
              height: 10,
            ),
            Text("with special feel"),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 125,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Intro3()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown)),
                child: Text(
                  "Next...",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
