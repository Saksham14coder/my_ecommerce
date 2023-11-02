import 'package:e_commerce/seller_dashboard.dart';
import 'package:e_commerce/update_product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './services/User_api.dart';
import './apis/ProductModel.dart';
import 'add_product.dart';
import 'manage_products.dart';
import 'order_details.dart';
import 'orders.dart';

import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.edit,
     title: 'Manage',
  ),
  TabItem(
    icon: Icons.add_circle_outline,
    title: 'Add',
  ),
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.line_style_sharp,
    title: 'Orders',
  ),
  TabItem(
    icon: Icons.account_circle_sharp,
    title: 'Profile',
  ),
];


class MainDashboard extends StatefulWidget {
  final String token, id;
  final int pageIndex;
  final String sortt;
  const MainDashboard({Key? key, required  this.token, required this.id, required this.pageIndex, required this.sortt}) : super(key: key);


  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> with TickerProviderStateMixin{

  int pageIndex = 2;
  double height = 25;
  Color colorSelect =Colors.white;
  Color color = Colors.lightBlue.shade900;
  Color color2 = Colors.lightBlue.shade900;
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    String token = widget.token;
    String id = widget.id;

    final pages = [
      ManageProducts(token: token, id:id, selectedcategories: [], selectedsubcategories: {}, selectedminPrice: 0, selectedmaxPrice: 0, sortt: widget.sortt,),
      AddProduct(
        token: token,
        id: id,
        productName: '',
        productDescription: '', productDetails: [], itemOptions: [],
      ),
      SellerDashboard(token: '', id: ''),
      Orders(),
      profileOptions(),
    ];
    return Scaffold(
      backgroundColor: const Color(0xfffcf5f4),

      body: pages[pageIndex],
      bottomNavigationBar: Container(

        child:  BottomBarInspiredInside(

          padTop: 8,
          padbottom: 8,
          sizeInside: 55,
          items: items,
          backgroundColor: bgColor,
          elevation: 25,
          color: Colors.lightBlue.shade900,
          colorSelected: Colors.white,
          indexSelected: pageIndex,
          onTap: (int index) => setState(() {
            pageIndex = index;
          }),
          chipStyle:const ChipStyle(convexBridge: true),
          itemStyle: ItemStyle.circle,
          animated: true,
          duration: Duration(milliseconds: 500),

        ),
      ),



    );
  }




}