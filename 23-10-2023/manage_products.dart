import 'dart:convert';
import 'dart:io';
import 'package:e_commerce/services/tokenId.dart';
import 'package:e_commerce/update_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'add_product.dart';
import 'main.dart';
import 'package:flutter_popup_menu_button/custom_popup_menu_button.dart';

import './services/User_api.dart';
import './apis/orderModel.dart';
import './apis/ProductModel.dart';
import 'package:http/http.dart' as http;


class ManageProducts extends StatefulWidget {
  final String token, id;
  const ManageProducts({Key? key, required  this.token, required this.id}) : super(key: key);

  @override
  _ManageProductsState createState() => _ManageProductsState();
}

class _ManageProductsState extends State<ManageProducts> {
  bool _switchValue = true;
  String stockIn = 'In Stock';
  String stockOut = 'Out of stock';

  bool isSelected = false;

  late Order order;
  late List<Product> product;
  String response1 = "";

  Future<void> sortBy(fieldName) async {
    product = await UserApi.getSellerProducts( fieldName, widget.token, widget.id);
    setState(() {

    });
  }

  @override
  initState() {
    fetchOrders(widget.token, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    String token = widget.token;
    String id = widget.id;
    Icon stockINorOut = Icon(Icons.circle_outlined,color: Colors.red.shade900,);

    return Scaffold(

        appBar: AppBar(
             title: Expanded(
                        flex: 3,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 5,right: 5),
                          child:
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black,width: 1),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.black38.withOpacity(0.5), //color of shadow
                                  blurRadius: 7, // blur radius

                                ),
                                //you can set more BoxShadow() here
                              ],


                            ),
                            margin: EdgeInsets.only( bottom: 5),

                            child: TextField(
                              style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: 'comfort'),
                              decoration: InputDecoration(
                                hintText: 'search',
                                hintStyle: TextStyle(color: Colors.black),
                                prefixIcon: Icon(Icons.search,color: Colors.black,),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),

            backgroundColor: Colors.lightBlue.shade900,
            iconTheme: IconThemeData(color: Colors.white),
          ),


        backgroundColor: Colors.white,

        body:
        FutureBuilder<List<Product>>(
          future: fetchOrders(token, id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final List<Product>? data = snapshot.data;

              return
                Column(
                  children: [
                    Container(
                      color: Colors.grey.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 5,right: 2,top: 5),
                              child:
                              Align(
                                alignment: Alignment.topLeft,
                                child: FlutterPopupMenuButton(
                                  direction: MenuDirection.left,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white
                                  ),
                                  popupMenuSize: const Size(180,210),
                                  child: FlutterPopupMenuIcon(
                                    key: GlobalKey(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        border: Border.all(color: Colors.black,width: 1),
                                        boxShadow:[
                                          BoxShadow(
                                            color: Colors.black38.withOpacity(0.5),
                                            blurRadius: 6,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only( bottom: 5),

                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Image.asset('assets/images/filter.png',width: 20,),
                                            SizedBox(width: 6,),
                                            Text('Filter',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'comfort',

                                                )),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  children: [
                                    FlutterPopupMenuItem(
                                        onTap: (){

                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('Category'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),
                                    FlutterPopupMenuItem(
                                        onTap: (){

                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('Low to High'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.green.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),
                                    FlutterPopupMenuItem(
                                        onTap: (){

                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('High to Low'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 2,right: 5,top: 5),
                              child:
                              Align(
                                alignment: Alignment.topLeft,
                                child: FlutterPopupMenuButton(
                                  direction: MenuDirection.left,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Colors.white
                                  ),
                                  popupMenuSize: const Size(180,270),
                                  child: FlutterPopupMenuIcon(
                                    key: GlobalKey(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        border: Border.all(color: Colors.black,width: 1),
                                        boxShadow:[
                                          BoxShadow(
                                            color: Colors.black38.withOpacity(0.5),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only( bottom: 5),

                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10,),
                                            Icon(Icons.sort,color: Colors.black ),
                                            SizedBox(width: 6,),
                                            Text('Sort',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontFamily: 'comfort',

                                                )),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  children: [
                                    FlutterPopupMenuItem(
                                        onTap: ()async{
                                          sortBy('productName');
                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('By Product'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),
                                    FlutterPopupMenuItem(
                                        onTap: (){
                                          sortBy("productName");
                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('By Price'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.green.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),
                                    FlutterPopupMenuItem(
                                        onTap: (){
                                          sortBy("productSoldCount");
                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('Most Selling'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        )),
                                    FlutterPopupMenuItem(
                                        onTap: (){

                                        },
                                        closeOnItemClick: true,
                                        child: ListTile(
                                          title: const Text('Rating Wise'),
                                          leading: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.cyanAccent.withOpacity(0.3),
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          itemCount: data?.length,
                          itemBuilder: (context, index) {
                            final prod = data?[index];
                            String s = prod!.inStock.toString() == 'false' ? 'In stock' :'Out of stock';

                            String starRating='';
                            int prating = 4;
                            if(prating == 0){
                              starRating = '';
                            }else if(prating <= 1){
                              starRating = '⭐';
                            }else if(prating <= 2){
                              starRating = '⭐⭐';
                            }else if(prating <= 3){
                              starRating = '⭐⭐⭐';
                            }else if(prating <= 4){
                              starRating = '⭐⭐⭐⭐';
                            }else if(prating >= 5){
                              starRating = '⭐⭐⭐⭐⭐';
                            } else{
                              starRating = '⭐';
                            }
                            return Container(
                              color: Colors.grey.shade300,
                              child: Column(
                                children: [
                                  Card(
                                    margin: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            // margin: EdgeInsets.only(bottom: 5, top: 5, left: 11,right: 10),

                                            child: SingleChildScrollView(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                                      ),
                                                      height: 170,
                                                      padding: EdgeInsets.all(10),
                                                      child: Column(

                                                        children: [
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [

                                                                Transform.scale(
                                                                  scale: 0.7,
                                                                  child: CupertinoSwitch(

                                                                    activeColor: Colors.red,

                                                                    value: prod!.inStock,
                                                                    onChanged: (bool value) {
                                                                      s = value == false ? 'In stock' : 'Out of stock';
                                                                      _switchValue = value;
                                                                      updateStock(value, prod!.id);
                                                                    },
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                    flex:2,
                                                                    child: Container(
                                                                      child: Text(s,
                                                                          style: TextStyle(
                                                                              color: Colors.green.shade900,
                                                                              fontSize: 11,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.bold
                                                                          )),
                                                                    )),
                                                                IconButton( icon: Icon(Icons.delete,color: Colors.red.shade900,size: 25,),
                                                                  onPressed: () {

                                                                  },),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(height: 5,),
                                                          Expanded(
                                                            flex: 3,
                                                            child:  Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child: Container(
                                                                      margin: EdgeInsets.only(right: 15),
                                                                      child:  (prod!.images.length>0)? Image.asset('assets/images/a1.jpg', height:150,width:80):
                                                                      Image.asset(
                                                                          'assets/images/g2.jpg',height:150,width:80),)
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Expanded(
                                                                            child: Container(
                                                                              // margin: EdgeInsets.only(left: 20),
                                                                              child: Text(prod!.productName,
                                                                                  style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 19,
                                                                                      fontFamily: 'comfart',
                                                                                      fontWeight: FontWeight.bold
                                                                                  )),
                                                                            )),
                                                                        Expanded(
                                                                          child: Row(
                                                                            children: [
                                                                              Text('₹${prod!.offerPrice.toString()}'
                                                                                  ,style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 16,
                                                                                      fontFamily: 'comfort',
                                                                                      fontWeight: FontWeight.bold)),
                                                                              SizedBox(width: 10,),
                                                                              Text('MRP '
                                                                                '₹${prod!.mrpPrice.toString()}'
                                                                                  '${860}',
                                                                                  style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 14,
                                                                                      fontFamily: 'comfort',
                                                                                      decoration: TextDecoration.lineThrough
                                                                                  )),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child: Container(
                                                                            width: 100,
                                                                            height: 18,
                                                                            decoration: BoxDecoration(
                                                                              //  border: Border.all(color: Colors.black),
                                                                                borderRadius: BorderRadius.all(Radius.circular(5))
                                                                            ),
                                                                            //   margin: EdgeInsets.only(right: 20),
                                                                            child: Text(starRating,
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 13.5,
                                                                                    fontFamily: 'comfort',
                                                                                    fontWeight: FontWeight.bold
                                                                                )),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:  Container(
                                                                            width: 220,
                                                                            child: MaterialButton(
                                                                              color: Colors.lightBlue.shade400,
                                                                              onPressed: (){
                                                                                Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProducts(
                                                                                  pid:prod!.id,
                                                                                  token: token,
                                                                                  id: id,
                                                                                  productName: prod!
                                                                                      .productName,
                                                                                  // productImage: prod!
                                                                                  //     .image
                                                                                  //     .toString(),
                                                                                  productCategory:
                                                                                  prod!.category,
                                                                                  productSubCategory1:
                                                                                  prod!.subCategory1,
                                                                                  productSubCategory2:
                                                                                  prod!.subCategory2,

                                                                                  quantityPricing: prod!
                                                                                      .productDetails,
                                                                                  stockTF: prod!.inStock,
                                                                                  stockIO: s,
                                                                                  // productType: prod!
                                                                                  //     .productType,
                                                                                  description: prod!
                                                                                      .description,
                                                                                )));
                                                                              }, child: Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),),
                                                                          ),
                                                                        ),

                                                                      ],
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

                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            );

                          },
                        ),
                      ),
                  ],
                );

            }
          },
        )
    );
  }
  //fetch product all
  Future<List<Product>> fetchOrders(token, id) async {
    final data = await UserApi.getProducts(token, id);
    return data;
  }

  Future<void> stockUpdate() async{
    final apiUrl = 'https://api.pehchankidukan.com/seller/${TokenId.id}/products/$pid';

    // final itemOptions = quantityPricing;

    final Map<String, dynamic> productJson = {
      "inStock": _switchValue
    };
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.put(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${TokenId.token}'
        },
        body: jsonEncode(productJson),
      );

      if (response.statusCode == 200) {
        print("product updated succesfully");

      } else {
        print('Failed to update product. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
    }
  }
  //update Stock only
  Future<void> updateStock(bool value, ppid) async {
    // print(value);
    // print("value");
    // print(ppid);
    final apiUrl = 'https://api.pehchankidukan.com/seller/${TokenId.id}/products/$ppid';

    final Map<String, dynamic> productJson ;
    if (value==true)
      productJson = {"inStock":"true"}; else productJson = {"inStock":"false"};
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.put(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${TokenId.token}'
        },
        body: jsonEncode(productJson),
      );

      if (response.statusCode == 200) {
        print("product updated succesfully");

      } else {
        print('Failed to update product. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print(e);
    }
    setState(() {

    });
  }
}