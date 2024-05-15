import 'package:ecommerce/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageListWidget extends StatefulWidget {
  final List<String> imageList;

  const ImageListWidget({Key? key, required this.imageList}) : super(key: key);

  @override
  State<ImageListWidget> createState() => _ImageListWidgetState();
}

class _ImageListWidgetState extends State<ImageListWidget> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: widget.imageList.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  current = index;
                });
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  width: MediaQuery.of(context).size.width / 7,
                  decoration: BoxDecoration(
                      color: current == index
                          ? parseColor("#f16b26")
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.imageList[index],
                        width: 20,
                        height: 20,
                        color:
                            current == index ? Colors.white : Colors.grey[750],
                      )
                    ],
                  )));
        },
      ),
    );
  }
}
