import 'package:flutter/material.dart';
import 'package:photo_picker_initial/auth/login.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fill,
                image: AssetImage("./assets/pictures/intro3.png"))),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset('./assets/pictures/people1.png'),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text("Save & Share",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Tropical",
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 25,
            ),
            Text("Be prepare to make your"),
            SizedBox(
              height: 10,
            ),
            Text("own color palette with"),
            SizedBox(
              height: 10,
            ),
            Text("our application"),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 125,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyLogin()));
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
