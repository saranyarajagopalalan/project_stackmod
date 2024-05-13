import 'package:ecommerce/screens/details_page.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List img = [
    Icon(Icons.watch),
    Icon(Icons.watch),
    Icon(Icons.watch),
    Icon(Icons.watch),
    Icon(Icons.watch),
    Icon(Icons.watch),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 10),
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
                      Card_stack(Color.fromRGBO(247, 82, 5, 1), context),
                      SizedBox(
                        width: 10,
                      ),
                      Card_stack(Color.fromRGBO(128, 5, 244, 1), context),
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
                        color: Colors.red,
                        size: 9,
                        fw: FontWeight.w600,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 40,
                  child: ListView.builder(
                    itemCount: img.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 10),
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10)),
                              child: img[index]));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      stack_img_content("assets/images/watch_1.png", context),
                      SizedBox(
                        width: 20,
                      ),
                      stack_img_content("assets/images/watch_1.png", context),
                      SizedBox(
                        width: 20,
                      ),
                      stack_img_content("assets/images/watch_1.png", context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack Card_stack(Color clr, BuildContext context) {
    Color? clr;

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4.4,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              color: Colors.orange[800],
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: AppText(
            data: "30% OFF DURING\nCOVID 19",
            color: Colors.white,
            fw: FontWeight.w600,
            size: 18,
          ),
        ),
        Positioned(
            right: 140,
            left: 20,
            top: 80,
            bottom: 25,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {},
                child: AppText(
                  data: "Get now",
                  color: Colors.orange,
                ))),
      ],
    );
  }

  GestureDetector stack_img_content(String img, BuildContext context) {
    String? img;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPage(
                img: img,
              ))),
      child: Stack(children: [
        Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[100]),
            child: Column(
              children: [
                Row_icon_discounbox(),
                Container(
                  child: Image.asset(
                    "assets/images/watch_1.png",
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    height: 110,
                    width: 100,
                  ),
                ),
                Positioned(
                  top: 50,
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppText(
                                data: "Apple Watch - M2",
                                color: Colors.grey,
                                size: 10,
                                fw: FontWeight.normal,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    data: "\$140",
                                    color: Colors.black,
                                    fw: FontWeight.w500,
                                  ),
                                  AppText(
                                    data: "\$200",
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
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
                fw: FontWeight.w700,
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
}
