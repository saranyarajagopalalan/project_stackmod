import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CartPage())),
    child: Container(
      height: 40,
      margin: const EdgeInsets.only(right: 25, left: 25, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.orange[800],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.orange.withAlpha(20), //shadow
                blurRadius: 20,
                spreadRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            data: "Add to cart",
            color: Colors.white,
            fw: FontWeight.w500,
            size: 15,
          )
        ],
      ),
    ),
  );
  }
}
