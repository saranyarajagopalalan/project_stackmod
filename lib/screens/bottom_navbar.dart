import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/home_page.dart';
import 'package:ecommerce/utils/color.dart';
import 'package:ecommerce/utils/textdata.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selected_index = 0;
  final screens = [HomePage(), Container(), CartPage(), Container()];
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              selected_index = index;
            });
          },
          children: [
            HomePage(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: selected_index,
        onItemSelected: (index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
        itemCornerRadius: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        showElevation: true,
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: AppText(
                data: "Home",
                fw: FontWeight.normal,
              ),
              activeColor: parseColor("#f16b26"),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Like"),
              activeColor: parseColor("#f16b26"),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.card_travel),
              title: Text("card_travel"),
              activeColor: parseColor("#f16b26"),
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            activeColor: parseColor("#f16b26"),
            inactiveColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
