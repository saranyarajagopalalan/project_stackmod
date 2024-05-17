import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientPickerScreen extends StatefulWidget {
  const GradientPickerScreen({super.key});

  @override
  State<GradientPickerScreen> createState() => _GradientPickerScreenState();
}

class _GradientPickerScreenState extends State<GradientPickerScreen> {
  Color _startcolor = Colors.blue;
  Color _endcolor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_startcolor, _endcolor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
    );
  }
}
