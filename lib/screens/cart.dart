import 'package:ecommerce/screens/bottom_navbar.dart';
import 'package:ecommerce/screens/home_page.dart';
import 'package:ecommerce/utils/color.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var Cart_img = [
    "assets/images/Apple Watch -M2.png",
    "assets/images/Ear Headphone.png",
    "assets/images/tshirt.png",
    "assets/images/Nike shoe.png"
  ];
  List colors = [
    parseColor("#f9ebe2"),
    parseColor("#e9f4f9"),
    parseColor("#eedfe0"),
    parseColor("#e3e5e9"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText(
                data: "My cart",
                size: 16,
                fw: FontWeight.w700,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
          child: Stack(
            children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      container_widget(Cart_img[0], "Apple Watch Series 3",
                          "\$140", "36", colors[0], context),
                      SizedBox(
                        height: 15,
                      ),
                      container_widget(Cart_img[1], "Sony ear headphone",
                          "\$50", "M", colors[1], context),
                      SizedBox(
                        height: 15,
                      ),
                      container_widget(Cart_img[2], "Levi's T-shirt", "\$40",
                          "S", colors[2], context),
                      SizedBox(
                        height: 15,
                      ),
                      container_widget(Cart_img[3], "Nike women sheos", "\$70",
                          "40", colors[3], context),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            data: "Total",
                            color: Colors.black,
                            fw: FontWeight.w300,
                          ),
                          AppText(
                            data: "\$300",
                            color: parseColor("#f16b26"),
                            fw: FontWeight.w600,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BottomNavbar())),
                        child: Positioned(
                          // bottom: 10,
                          // top: 100,
                          height: 100,
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: parseColor("#f16b26"),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: parseColor("#f16b26")
                                          .withAlpha(20), //shadow
                                      blurRadius: 20,
                                      spreadRadius: 10)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  data: "Buy Now",
                                  color: Colors.white,
                                  fw: FontWeight.w500,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Container container_widget(String img, String title, String price,
      String size, Color colors, BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width / 1,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 15, right: 15, left: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(
                      color: colors, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    data: title,
                    color: Colors.black,
                    fw: FontWeight.w500,
                    size: 15,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AppText(
                    data: "Size :$size",
                    color: Colors.black,
                    size: 10,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppText(
                            data: price,
                            fw: FontWeight.w700,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 60,
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    data: "-",
                                    color: parseColor("#f16b26"),
                                    size: 15,
                                    fw: FontWeight.w700,
                                  ),
                                  // IconButton(
                                  //     padding: EdgeInsets.all(0),
                                  //     onPressed: () {},
                                  //     icon: Icon(
                                  //       Icons.remove,
                                  //       color: Colors.deepOrange,
                                  //       size: 14,
                                  //     )),
                                  AppText(
                                      data: "1",
                                      color: Colors.black,
                                      fw: FontWeight.w600),
                                  // IconButton(
                                  //     padding: EdgeInsets.all(0),
                                  //     onPressed: () {},
                                  //     icon: Icon(
                                  //       Icons.add,
                                  //       color: Colors.deepOrange,
                                  //       size: 14,
                                  //     ))
                                  AppText(
                                    data: "+",
                                    color: parseColor("#f16b26"),
                                    size: 15,
                                    fw: FontWeight.w700,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _navBar(BuildContext context) {
  // the small navbar with [remember : youtube link should be given ]
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: [AppText(data: "Total"), AppText(data: "\$300")],
        ),
      ),
    ],
  );
}
