import 'dart:io';

// import 'package:e_commerce/home.dart';
import 'package:e_commerce/HomeWidget/recent_Order.dart';
import 'package:e_commerce/HomeWidget/recent_added_product.dart';
import 'package:e_commerce/manage_products.dart';
import 'package:e_commerce/order_details.dart';
import 'package:e_commerce/main_dashboard.dart';
//import 'package:e_commerce/seller_profile_option.dart';
import 'package:e_commerce/update_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_product.dart';
import 'main.dart';

import './services/User_api.dart';
import './apis/ProductModel.dart';


class SellerDashboard extends StatefulWidget {
  final String token, id;
  const SellerDashboard({Key? key, required this.token, required this.id})
      : super(key: key);

  @override
  _SellerDashboardState createState() => _SellerDashboardState();
}

class _SellerDashboardState extends State<SellerDashboard> {




  @override
  Widget build(BuildContext context) {
    var token = widget.token;
    var id = widget.id;



    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Image.asset('assets/images/app_logo.png',width: 100,height: 30,)
            ,
            Expanded(child: Icon(Icons.notifications, color: Colors.white)),
            CircleAvatar(
              backgroundColor: Colors.red.shade100,
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 18,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return profileOptions(); // Replace NewScreen with the screen you want to navigate to
                    },
                  ),
                );
                // Handle the click or tap action here
                // For example, you can navigate to a new screen or perform some action.
              },
              child:CircleAvatar(
                backgroundColor: Colors.red.shade100,
                backgroundImage: AssetImage('assets/images/avatar.png'),
                radius: 18,
              ),),
            InkWell(
              onTap: ()=>const profileOptions(),
              child:CircleAvatar(
                backgroundColor: Colors.red.shade100,
                backgroundImage: AssetImage('assets/images/avatar.png'),
                radius: 18,
              ),
            )

          ],
        ),
        centerTitle: true,
        //backgroundColor: Colors.grey.shade200,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      child: Text(
                        'Hello, Seller',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'comfort',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 10, left: 10, top: 15,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Sales Report',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'comfort',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.black)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        color: Colors.lightBlue.shade100,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    'This Month',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'comfort',
                                      fontWeight: FontWeight.w500,
                                    ), //Textstyle
                                  ), //Text
                                  CircleAvatar(
                                    backgroundColor: Colors.lightBlue.shade900,
                                    radius: 40,
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 36,
                                      child: Text(
                                        '₹5052',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ), //Textstyle
                                      ),
                                    ), //CircleAvatar
                                  ), //CircleAvatar
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                ],
                              ),
                            ), //Column
                          ), //Padding
                        ), //SizedBox
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        color: Colors.lightBlue.shade100,
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    'This Week',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'comfort',
                                      fontWeight: FontWeight.w500,
                                    ), //Textstyle
                                  ), //Text
                                  CircleAvatar(
                                    backgroundColor: Colors.lightBlue.shade900,
                                    radius: 40,
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 36,
                                      child: Text(
                                        '₹852',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ), //Textstyle
                                      ),
                                    ), //CircleAvatar
                                  ), //CircleAvatar
                                  const SizedBox(
                                    height: 10,
                                  ), //SizedBox
                                ],
                              ),
                            ), //Column
                          ), //Padding
                        ), //SizedBox
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin:
                EdgeInsets.only(right: 10, left: 10, top: 30, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Recent Orders',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'comfort',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.black)
                  ],
                ),
              ),
              RecentOrder(),
              Center(
                child: ViewMoreButton( onPressed: () {
                  // Navigate to the desired route when the button is pressed
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => AllStoresScreen()));
                },),
              ),

              Container(
                margin:
                EdgeInsets.only(right: 10, left: 10, top: 25, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Recent Added Product',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'comfort',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.black)
                  ],
                ),
              ),
              RecentAddedProduct(),
              Center(
                child: ViewMoreButton( onPressed: () {
                  // Navigate to the desired route when the button is pressed
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => AllStoresScreen()));
                },),
              ),

              Container(
                margin:
                EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Manage Your Product',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'comfort',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_outlined, color: Colors.black)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10,bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddProduct(
                                  token: token,
                                  id: id,
                                  category: '',
                                  subCategory1: '',
                                  subCategory2: '',
                                  productName: '',
                                  productDescription: '', productDetails: [], itemOptions: [],
                                ),
                              ));
                        },
                        child: Card(
                          shadowColor: Colors.black,
                          color: Colors.blue.shade100,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue.shade900,
                                      radius: 28,
                                      child: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 24,
                                          child: Icon(Icons.add_circle_outline,
                                              color:
                                              Colors.black)), //CircleAvatar
                                    ), //CircleAvatar
                                    const SizedBox(
                                      height: 10,
                                    ), //SizedBox
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Add Product',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ), //Textstyle
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined,
                                              color: Colors.black)
                                        ],
                                      ),
                                    ), //Text
                                  ],
                                ),
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ManageProducts(token: token, id: id, selectedcategories: [], selectedsubcategories: {}, selectedminPrice: 0, selectedmaxPrice: 0,),
                              ));
                        },
                        child: Card(
                          shadowColor: Colors.black,
                          color: Colors.blue.shade100,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blue.shade900,
                                      radius: 28,
                                      child: const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 24,
                                          child: Icon(Icons.edit,
                                              color:
                                              Colors.black)), //CircleAvatar
                                    ), //CircleAvatar
                                    const SizedBox(
                                      height: 10,
                                    ), //SizedBox
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Manage Product',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ), //Textstyle
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined,
                                              color: Colors.black)
                                        ],
                                      ),
                                    ), //Text
                                  ],
                                ),
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Future<List<Product>> fetchOrders(token, id) async {
    final data = await UserApi.getProducts(token, id);
    print("printing Dataaaa");
    print(data);
    return data;
  }


}

class ViewMoreButton extends StatelessWidget {
  final VoidCallback onPressed;

  ViewMoreButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final buttonWidth = screenWidth * 0.4; // Adjust the width as needed

    return InkWell(
      onTap: onPressed, // Call the provided onPressed function when tapped
      child: Container(
        margin: EdgeInsets.only(top: 20,bottom: 20),
        alignment: Alignment.center,
        width: buttonWidth,
        height: 40,
        decoration: ShapeDecoration(
          color: const Color.fromRGBO(255, 247, 247, 1.0),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFF6AB04C)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            'View All',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'comfort',
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}