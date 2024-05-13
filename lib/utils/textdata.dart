import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String? data;
  double? size;
  Color? color;
  FontWeight? fw;

  AppText({Key? key, required this.data, this.size, this.color, this.fw})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toString(),
      style: TextStyle(
          fontSize: size, fontFamily: "Roboto", color: color, fontWeight: fw),
    );
  }
}
