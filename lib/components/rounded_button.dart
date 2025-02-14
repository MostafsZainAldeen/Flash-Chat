import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.colour,
    required this.onPressed,
    required this.title,
  });

  final Color colour;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 333,
          height: 50.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
