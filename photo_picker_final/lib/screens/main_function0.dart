import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_picker_initial/screens/color_palette_make/category_colorPaletteMaker.dart';
import 'package:photo_picker_initial/screens/get_inspiration/category_getInspiration.dart';
import 'package:photo_picker_initial/screens/color_palette_make/main.dart';
import 'package:photo_picker_initial/screens/color_palette_make/set_photo_screen.dart';
import 'package:photo_picker_initial/screens/get_inspiration/grid_search.dart';
import 'package:photo_picker_initial/screens/explore_color/category_exploreColor.dart';

class mainFunction0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  image: AssetImage("./assets/pictures/menuu.png"))),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint('Floating Action Button');
              },
              child: const Icon(Icons.menu)),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: NavigationBar(destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite')
          ]),
          body: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Your Palette',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Hi, welcome \nPlease choose your method \nto make Your Palette',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => categoryExploreColor()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade200)),
                  child: Text(
                    "Explore Color",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetPhotoScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow.shade200)),
                  child: Text(
                    "Color Palette Maker",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => categoryGetInspiration()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange.shade200)),
                  child: Text(
                    "Get Inspiration",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}