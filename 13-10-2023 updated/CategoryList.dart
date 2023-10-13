import 'dart:convert';
import 'dart:js';

import 'package:e_commerce/subCategory1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Category extends StatelessWidget {

  Category({Key? key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Category Codes List'),
        ),
        body: CategoryList(),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  CategoryList({Key? key,});

  List<String> categoryCodes=[];
  Future<void> getCategories(String category) async {


    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(
        builder: (context) => SubCategory1(cat: category),
      ),
    );
  }

  Future<void> getAllCategory() async {
    final apiUrl = "https://api.pehchankidukan.com/seller/category";
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      categoryCodes = jsonData['data'];
    } else {
      throw Exception('Failed to load categories');
    }
  }
  void initState() {
    getAllCategory();

  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryCodes.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () async{
            await getCategories(categoryCodes[index]);
          },
          title: Text(categoryCodes[index]),
        );
      },
    );
  }
}