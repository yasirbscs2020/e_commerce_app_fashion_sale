import 'package:e_commerce_app_fashion_sale/ui/common/categories/category_screen.dart';
import 'package:e_commerce_app_fashion_sale/ui/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  int currentIndex = 0;

  final pages = [
    const HomePage1(),
    const CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24.r,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 24.r,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 24.r,
              ),
              label: 'Bag'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 24.r,
              ),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
                size: 24.r,
              ),
              label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
