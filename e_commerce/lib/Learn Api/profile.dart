import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileApi extends StatelessWidget {
  String image = '';
  String name = '';
  ProfileApi(this.image,this.name);


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Call Api",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            CircleAvatar(backgroundColor: Colors.red.shade100,backgroundImage: AssetImage('assets/images/avatar.png'),radius: 18,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.white,


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(image),
            ),
            Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
             SizedBox(height: 20),

             SizedBox(height: 10),

             SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:  EdgeInsets.all(15),
                  ),
                  child:  Text('Edit Profile')
              ),
            )
          ],
        ),
      ),

    );
  }
}
