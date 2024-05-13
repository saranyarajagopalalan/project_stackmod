import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  const DetailsPage({this.img, this.title, this.subtitle});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/watch_1.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                  )),
              Align(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[50]),
                      child: AppText(
                        data: "Apple Watch - M2",
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
