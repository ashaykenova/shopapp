import 'package:flutter/material.dart';

Color deepOrange = Colors.deepOrange;
Color black = Colors.black;
Color grey = Colors.grey.withOpacity(0.2);
Color white = Colors.white;
Color red = Colors.red;

//methods
void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void changeScreenReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
}