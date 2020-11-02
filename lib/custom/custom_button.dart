import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;

  CustomButton({@required this.text, @required this.onPressed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 48,
      color: Colors.blueAccent,
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: widget.onPressed,
    );
  }
}
