import 'dart:html';
import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/utils/color.dart';
import 'package:ecommerce/utils/image_list_widgets.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsPage extends StatefulWidget {
  final String? img;
  final String? title;
  final String? subtitle1;
  final String? subtitle2;
  final String? description;
  final String? rating;
  final String? price;
  final String? sub_price;
  const DetailsPage(
      {this.img,
      this.title,
      this.description,
      this.price,
      this.rating,
      this.subtitle1,
      this.subtitle2,
      this.sub_price});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  int current = 0;
  final List<String> sizeList = [
    "35",
    "36",
    "37",
    "38",
    "40",
    "41",
    "42",
  ];
  @override
  Widget build(BuildContext context) {
    final images = [
      "${widget.img}",
      "${widget.img}",
      "${widget.img}",
    ];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
      ),
      body: ClipPath(
        
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(150),
                  //     bottomRight: Radius.circular(150)
                  // )
                  ),
              height: MediaQuery.of(context).size.height / 2.4,
              width: MediaQuery.of(context).size.width / 1,
              child: CarouselSlider(
                  items: [Image.network("${widget.img}")],
                  options: CarouselOptions(autoPlay: true, aspectRatio: 2)),
            ),
            Align(
              alignment: Alignment(0, -0.2),
              child: SmoothPageIndicator(
                  controller: controller,
                  count: images.length,
                  effect: const ScrollingDotsEffect(
                      activeStrokeWidth: 1,
                      activeDotScale: 1,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 10,
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Colors.deepOrange,
                      dotColor: Colors.white)),
            ),
            Positioned(
                top: 280,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 25, bottom: 55),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              data: "${widget.title}",
                              color: Colors.black,
                              fw: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                star_rating(),
                                star_rating(),
                                star_rating(),
                                star_rating(),
                                star_rating(),
                                const SizedBox(
                                  width: 15,
                                ),
                                AppText(
                                  data: "${widget.rating} ",
                                  color: Colors.black,
                                  fw: FontWeight.w500,
                                  size: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(
                                      data: "${widget.price}",
                                      color: Colors.black,
                                      fw: FontWeight.w800,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3.0),
                                      // child: AppText(
                                      //   data: "${widget.sub_price}",
                                      //   color: Colors.grey,
        
                                      //   fw: FontWeight.normal,
                                      //   size: 10,
                                      // ),
                                      child: Text(
                                        "${widget.sub_price}",
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 10,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: AppText(
                                    data: "Available in stock",
                                    color: Colors.black,
                                    size: 10,
                                    fw: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  data: "About",
                                  color: Colors.black,
                                  fw: FontWeight.w600,
                                  size: 13,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: AppText(
                                    data: "${widget.description}",
                                    color: Colors.black,
                                    fw: FontWeight.normal,
                                    size: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 50,
                              child: ListView.builder(
                                itemCount: sizeList.length,
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
                                          duration:
                                              const Duration(milliseconds: 300),
                                          margin: const EdgeInsets.only(
                                              top: 5, right: 5, left: 5),
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  7,
                                          decoration: BoxDecoration(
                                              color: current == index
                                                  ? Colors.red[50]
                                                  : Colors.white,
                                              border: current == index
                                                  ? Border.all(
                                                      width: 0.1,
                                                      color: Colors.grey)
                                                  : Border.all(width: 0.5),
                                              // border: Border.all(
                                              //     width: 0.5, color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                sizeList[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: current == index
                                                      ? parseColor("#f16b26")
                                                      : Colors.black,
                                                ),
                                              )
                                            ],
                                          )));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            AppText(data: " ")
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            Align(alignment: Alignment.bottomCenter, child: _navBar(context))
          ],
        ),
      ),
    );
  }

  Icon star_rating() {
    return const Icon(
      Icons.star,
      color: Colors.amber,
      size: 15,
    );
  }
}

Widget _navBar(BuildContext context) {
  // the small navbar with [remember : youtube link should be given ]
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
