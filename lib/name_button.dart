import 'package:flutter/material.dart';

class NameButton extends StatefulWidget {
  final String char;

  const NameButton({Key? key, required this.char}) : super(key: key);

  @override
  _NameButtonState createState() => _NameButtonState();
}

class _NameButtonState extends State<NameButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isClicked ? Color.fromARGB(255, 231, 136, 168) : Color.fromARGB(255, 239, 229, 233),
      ),
      child: Text(
        widget.char,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}