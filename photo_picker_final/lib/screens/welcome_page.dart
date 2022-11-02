import 'package:flutter/material.dart';
import 'package:photo_picker_initial/screens/intro1.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                fit: BoxFit.fill,
                image: AssetImage("./assets/pictures/homescreen.png"))),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Intro1()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '.',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontFamily: "Tropical"),
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontFamily: "Tropical"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 250,
                height: 300,
                // decoration: BoxDecoration(
                // image: DecorationImage(
                // image: AssetImage("./assets/pictures/homescreen.png"),
                // alignment: Alignment.center,
                // fit: BoxFit.fill,
                // )),
                // child: Image.asset("./assets/pictures/sticker3.png")
              )
            ],
          ),
        ),
      ),
    );
  }
}
