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
    "assets/images/White Tshirts.png",
    "assets/images/Nike shoe.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 15, right: 10),
        child: Container(
          height: MediaQuery.of(context).size.height / 5.5,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width / 1,
          child: Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            Cart_img.first,
                            fit: BoxFit.fill,
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
                          data: "Apple Watch Series 3",
                          color: Colors.black,
                          fw: FontWeight.w500,
                          size: 15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                          data: "Size :36",
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
                                  data: "\$140",
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText(
                                          data: "-",
                                          color: Colors.deepOrange,
                                          size: 15,
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
                                          color: Colors.deepOrange,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
