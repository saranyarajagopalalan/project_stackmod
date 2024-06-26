import 'package:ecommerce/screens/details_page.dart';
import 'package:ecommerce/services/remote_services.dart';
import 'package:ecommerce/utils/color.dart';
import 'package:ecommerce/utils/image_list_widgets.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Future<List<ProductModel>> products;
  // @override
  // void initState() {
  //   super.initState();
  //   products = getData();
  // }
  List<ProductModel>? products;
  var isLoaded = false;

  @override
  void initState() {
    //fetch data from api
    super.initState();
    getdata();
  }

  getdata() async {
    products = await RemoteService().getProduct();
    if (products != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  int current = 0;
  final List<String> IconImageList = [
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
    "assets/images/icon6.png",
    "assets/images/icon7.png",
  ];
  var imageList = [
    "assets/images/slide1.png",
    "assets/images/slide3.png",
    "assets/images/slide4.png"
  ];
  Map textcolor = {
    "textcolor": Colors.orange,
    "backgroundcolor": Colors.white,
  };
  var pNames = [
    "assets/images/Apple Watch -M2.png",
    "assets/images/watch_1.png"
  ];

  List<Color> Clrs = [
    Color.fromRGBO(248, 68, 2, 0.913),
    Color.fromRGBO(12, 43, 248, 0.91),
    Color.fromRGBO(41, 248, 103, 0.91),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // height: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                            )),
                      ),
                      Container(
                        // height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                AppText(
                  data: "Hello Rocky",
                  color: Colors.black,
                  size: 20,
                  fw: FontWeight.w600,
                ),
                AppText(
                  data: "Lets get's somethings?",
                  color: Colors.grey,
                  size: 10,
                  fw: FontWeight.w500,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.only(left: 10),
                                  height:
                                      MediaQuery.of(context).size.height / 4.4,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  decoration: BoxDecoration(
                                      color: Clrs[i],
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Positioned(
                                  top: 25,
                                  left: 20,
                                  child: AppText(
                                    data: "30% OFF DURING\nCOVID 19",
                                    color: Colors.white,
                                    fw: FontWeight.w600,
                                    size: 15,
                                  ),
                                ),
                                Positioned(
                                    right: 140,
                                    left: 20,
                                    top: 80,
                                    bottom: 25,
                                    child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.white)),
                                        onPressed: () {},
                                        child: AppText(
                                          data: "Get now",
                                          color: parseColor("#f16b26"),
                                        ))),
                                Positioned(
                                    height: 100,
                                    width: 100,
                                    top: 30,
                                    // bottom: 2,
                                    left: 155,
                                    // right: 15,
                                    child: Image.asset(
                                      imageList[i],
                                      fit: BoxFit.cover,
                                      width: 50,
                                    ))
                              ],
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        data: "Top Categories",
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fw: FontWeight.w500,
                        size: 15,
                      ),
                      AppText(
                        data: "SEE ALL",
                        color: parseColor("#f16b26"),
                        size: 9,
                        fw: FontWeight.w600,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ImageListWidget(imageList: IconImageList),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          stack_img_content(pNames[1], "Apple Watch - M2",
                              "\$140", "\$200", context),
                          SizedBox(
                            width: 10,
                          ),
                          stack_img_content(pNames[0], "Apple Watch - M2",
                              "\$100", "\$130", context),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          stack_img_content("assets/images/watch_1.png",
                              "Apple Watch - M2", "\$140", "\$200", context),
                          SizedBox(
                            width: 10,
                          ),
                          stack_img_content("assets/images/watch_1.png",
                              "Apple Watch - M2", "\$100", "\$130", context),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: isLoaded,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 245),
                      shrinkWrap: true,
                      itemCount: products!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      img: products![index].image,
                                      title: products![index].title,
                                      description: products![index].description,
                                      rating: '${products![index].rating.rate}',
                                      price: '\$${products![index].price}',
                                      sub_price:
                                          '\$${products![index].price}'))),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[100]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, right: 2, left: 2, bottom: 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white),
                                          child: Center(
                                            child: AppText(
                                              data: "30% OFF",
                                              color: Colors.black,
                                              size: 9,
                                              fw: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.favorite,
                                                color: Colors.grey,
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Image.network(
                                      products![index].image,
                                      fit: BoxFit.contain,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              5,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Positioned(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5, bottom: 3),
                                      child: Expanded(
                                        child: Container(
                                          height: 50,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              )),
                                          child: Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    products![index].title),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AppText(
                                                      data:
                                                          '\$${products![index].price}',
                                                      color: Colors.black,
                                                      fw: FontWeight.w600,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 3.0),
                                                      child: Text(
                                                        '\$${products![index].price}',
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          fontSize: 10,
                                                          color: Colors.black
                                                              .withOpacity(0.4),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  replacement: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

GestureDetector stack_img_content(String img, String title, String subtitle1,
    String subtitle2, BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailsPage(
            img: img,
            title: title,
            subtitle1: subtitle1,
            subtitle2: subtitle2))),
    child: Stack(children: [
      Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 2.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row_icon_discounbox(),
              Container(
                child: Image.asset(
                  img,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  height: 110,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Positioned(
                top: 50,
                // bottom: 5,
                // right: 10,
                // left: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, right: 5, bottom: 3),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            data: title,
                            color: Colors.grey,
                            size: 10,
                            fw: FontWeight.normal,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                data: subtitle1,
                                color: Colors.black,
                                fw: FontWeight.w600,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text(
                                  subtitle2,
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    ]),
  );
}

Padding Row_icon_discounbox() {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, right: 10, left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 25,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Center(
            child: AppText(
              data: "30% OFF",
              color: Colors.black,
              size: 9,
              fw: FontWeight.w800,
            ),
          ),
        ),
        Container(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              )),
        )
      ],
    ),
  );
}
