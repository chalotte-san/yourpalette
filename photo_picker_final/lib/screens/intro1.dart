import 'package:flutter/material.dart';

import 'intro2.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fill,
                image: AssetImage("./assets/pictures/intro1.png"))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset('./assets/pictures/running-people.png'),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text("Get inspired",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Tropical",
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 25,
            ),
            Text("Find interesting color"),
            SizedBox(
              height: 10,
            ),
            Text("palette for your project"),
            SizedBox(
              height: 10,
            ),
            Text("and your friend"),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 125,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Intro2()));
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
