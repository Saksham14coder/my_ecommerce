import 'dart:convert';

import 'package:e_commerce/Learn%20Api/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class CallApi extends StatefulWidget {
  const CallApi ({Key? key}) : super(key: key);

  @override
  _CallApiState createState() => _CallApiState();
}

class _CallApiState extends State<CallApi> {

  List<dynamic> users = [];


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
            Expanded(child: Icon(Icons.notifications,color: Colors.white,)),
            CircleAvatar(backgroundColor: Colors.red.shade100,backgroundImage: AssetImage('assets/images/avatar.png'),radius: 18,),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
        onPressed: fatchData,
        child: Icon(Icons.add_circle_outline),
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['email'];
          final title = user['name']['last'];
          final name = user['name']['first'];
          final image = user['picture']['thumbnail'];
          final city = user['location']['city'];
          final country = user['location']['country'];
          final id = user['id']['name'];
          final icon = user['dob']['age'] > 50 ? Icons.verified : Icons.verified_user;

        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileApi(image,name),));
          },
          leading: CircleAvatar(
            backgroundColor: Colors.grey.shade50,
            backgroundImage: NetworkImage(image),
          ),
          title: Text('${name} ${title}',style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text('${city}  , ${country}'),
          trailing: Column(
            children: [
              Icon(icon),
              Text('Work in ${id}')
            ],
          ),
        );
      },),
    );


  }

  void fatchData() async{
     print('Fetch data');
     const url = 'https://randomuser.me/api/?results=20';
     final uri = Uri.parse(url);
     final response = await http.get(uri);
     final body = response.body;
     final json = jsonDecode(body);
     setState(() {
       users = json['results'];
     });
     print('Fetch completed');
  }


}