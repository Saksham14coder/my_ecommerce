
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import '../apis/ProductModel.dart';
import '../apis/orderModel.dart';
import 'package:http/http.dart' as http;

class UserApi {


  // get all orders API
  static Future fetchOrderData() async {

    // const url = "";
    // final uri = Uri.parse(url);
    // final response = await http.get(uri);
    // final body = response.body;
    // final json = jsonDecode(body);


    Map<String, dynamic> json = {
      "orderID": "101",
      "customerID": "1001",
      "sellerID": "1234",
      "productList": [
        {
          "productID": "111",
          "productName": "Product 1",
          "category": "Electronics",
          "subcategory": "laptop",
          "image": ["image1.jpg", "image2.jpg"],
          "description": "Description of Product 1",
          "quantityType": "Unit",
          "mrpPrice": "49.99",
          "offerPrice": "39.99",
          "productType": "Physical",
          "returnReplacement": {
            "returnStatus": true,
            "replacementStatus": false,
            "returnPeriod": "30",
            "replacementPeriod": "0",
          },
          "sellerID": "seller123",
          "created_at": "2023-09-18T08:00:00Z",
          "updated_at": "2023-09-18T10:00:00Z",
        },
        {
          "productID": "112",
          "productName": "Product 2",
          "category": "Clothing",
          "subcategory": "laptop",
          "image": ["image3.jpg", "image4.jpg"],
          "description": "Description of Product 2",
          "quantityType": "Piece",
          "mrpPrice": "29.99",
          "offerPrice": "24.99",
          "productType": "Physical",
          "returnReplacement": {
            "returnStatus": true,
            "replacementStatus": true,
            "returnPeriod": "30",
            "replacementPeriod": "30",
          },
          "sellerID": "seller456",
          "created_at": "2023-09-19T09:00:00Z",
          "updated_at": "2023-09-19T11:00:00Z",
        },
      ],
      "orderStatus": "new",
      "totalPrice": 1125.28,
      "payment": {
        "paymentID": "998",
        "paymentStatus": "paid",
        "paymentMode": "online",
        "paymentDate": "2023-09-23T15:30:00Z",
        "paymentAmount": 1125.28,
      },
    };
    Order order =  Order.fromJson(json);
    return order;
  }


  //create Product API
  static Future<void> createProduct(Product product) async {
    final apiUrl = 'https://api/seller/:sellerid/product';

    final Map<String, dynamic> productJson = {
      "productName": product.productName,
      "category": product.category,
      "subcategory": product.subcategory,
      "image": product.image,
      "description": product.description,
      "quantityType": product.quantityType,
      "mrpPrice": product.mrpPrice,
      "offerPrice": product.offerPrice,
      "productType": product.productType,
    };
    var uri = Uri.parse(apiUrl);
    try {
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(productJson),
      );

      // if (response.statusCode == 201) {
      // } else {
      // }
    } catch (e) {
    }
  }


  static Future<List<Product>> getProducts() async {
    // final uri = Uri.parse('https://api/seller/:sellerID/products');
    // final response = await http.get(uri);
    // final body = response.body;
    // final json = jsonDecode(body);

    final List<dynamic> productJson = [
      {
        "productID": "12345",
        "productName": "Product1",
        "category": "Electronics",
        "subcategory": "laptop",
        "image": ["image_url1", "image_url2"],
        "description": "This is an example product.",
        "quantityType": "Pieces",
        "mrpPrice": 499.99,
        "offerPrice": 399.99,
        "productType": "Not required",
        "sellerID": "9876",
        "returnReplacement": {
          "returnStatus": true,
          "replacementStatus": false,
          "returnPeriod": 30,
          "replacementPeriod": 0,
        },
        "stock": false,
      },
      {
        "productID": "12346",
        "productName": "Product2",
        "category": "Grocery",
        "subcategory": "milk product",
        "image": ["image_url1", "image_url2"],
        "description": "This is an example product1.",
        "quantityType": "ml",
        "mrpPrice": 499.99,
        "offerPrice": 399.99,
        "productType": "Veg",
        "sellerID": "9876",
        "returnReplacement": {
          "returnStatus": true,
          "replacementStatus": false,
          "returnPeriod": 30,
          "replacementPeriod": 0,
        },
        "stock": true,
      },
      {
        "productID": "12347",
        "productName": "Product3",
        "category": "Grocery",
        "subcategory": "milk product",
        "image": ["image_url1", "image_url2"],
        "description": "This is an example product1.",
        "quantityType": "ml",
        "mrpPrice": 499.99,
        "offerPrice": 399.99,
        "productType": "Veg",
        "sellerID": "9876",
        "returnReplacement": {
          "returnStatus": true,
          "replacementStatus": false,
          "returnPeriod": 30,
          "replacementPeriod": 0,
        },
        "stock": false,
      },
      {
        "productID": "12348",
        "productName": "Product4",
        "category": "Grocery",
        "subcategory": "milk product",
        "image": ["image_url1", "image_url2"],
        "description": "This is an example product1.",
        "quantityType": "ml",
        "mrpPrice": 499.99,
        "offerPrice": 399.99,
        "productType": "Veg",
        "sellerID": "9876",
        "returnReplacement": {
          "returnStatus": true,
          "replacementStatus": false,
          "returnPeriod": 30,
          "replacementPeriod": 0,
        },
        "stock": true,
      },
      {
        "productID": "12349",
        "productName": "Product5",
        "category": "Grocery",
        "subcategory": "milk product",
        "image": ["image_url1", "image_url2"],
        "description": "This is an example product1.",
        "quantityType": "ml",
        "mrpPrice": 499.99,
        "offerPrice": 399.99,
        "productType": "Veg",
        "sellerID": "9876",
        "returnReplacement": {
          "returnStatus": true,
          "replacementStatus": false,
          "returnPeriod": 30,
          "replacementPeriod": 0,
        },
        "stock": false,
      },
    ];
    List<Product> product = productJson.map((e) => Product.fromJson(e)).toList();
    return product;
  }



}