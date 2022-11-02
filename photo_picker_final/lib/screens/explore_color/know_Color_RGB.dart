import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:photo_picker_initial/screens/color_palette_make/collection.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: ColorPickerDemo2()));
}

class ColorPickerDemo2 extends StatefulWidget {
  const ColorPickerDemo2({Key? key}) : super(key: key);

  @override
  State<ColorPickerDemo2> createState() => _ColorPickerDemo2State();
}

class _ColorPickerDemo2State extends State<ColorPickerDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Know Color RGB'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => collection()));
          },
          child: const Icon(Icons.menu)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite')
      ]),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Select Color",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => showPicker(),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        ),
      ),
    );
  }

  Color pickerColor = Color.fromARGB(255, 255, 255, 255);
  Color currentColor = Color.fromARGB(255, 213, 150, 244);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  Future showPicker() {
    // raise the [showDialog] widget
    return showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Select a color!'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Done'),
            onPressed: () {
              setState(() => currentColor = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      context: context,
    );
  }
}
