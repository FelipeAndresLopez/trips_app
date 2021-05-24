import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomFloatingActionButton();
  }
}

class _CustomFloatingActionButton extends State<CustomFloatingActionButton> {
  bool _pressed = false;
  void onPressedFav() {
    // ScaffoldMessenger.of(context)
    //     .showSnackBar(SnackBar(content: Text("Favoritos")));
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child:
          _pressed ? Icon(Icons.favorite_sharp) : Icon(Icons.favorite_border),
    );
  }
}
