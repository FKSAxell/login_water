import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final Color textColor;
  final BorderSide side;

  const CustomButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.color,
    required this.onPressed,
    required this.side,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
      splashColor: Colors.transparent,
      color: this.color,
      minWidth: size.width * 0.85,
      height: 45,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(6),
        side: this.side,
      ),
      child: Text(
        this.text,
        style: TextStyle(color: this.textColor, fontSize: 18),
      ),
      onPressed: this.onPressed,
    );
  }
}
