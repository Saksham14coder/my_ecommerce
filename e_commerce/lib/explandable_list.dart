import 'package:e_commerce/add_product.dart';
import 'package:e_commerce/dataModel.dart';
import 'package:flutter/material.dart';



class ExpandList extends StatefulWidget {
  const ExpandList({Key? key}) : super(key: key);

  @override
  _ExpandListState createState() => _ExpandListState();
}

class _ExpandListState extends State<ExpandList> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Choose Category",
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

      backgroundColor: Colors.grey.shade200,

      body: ListView(
        children: basicTiles.map(buildTile).toList(),
      ),
    );
  }

  Widget buildTile(BasicTile tile,{double leftPadding = 16}){
    if(tile.tiles.isEmpty){
      return ListTile(
        contentPadding: EdgeInsets.only(left: leftPadding),
        title: Text(tile.title,style: TextStyle(fontSize: 18)),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:  (context) => AddProduct(),));

        },
      );
    }else {
      return ExpansionTile(
        tilePadding: EdgeInsets.only(left: leftPadding),
        trailing: const SizedBox.shrink(),
        leading: const Icon(Icons.keyboard_arrow_right_outlined),
        title: Text(tile.title,style: TextStyle(fontSize: 18),),
        children: tile.tiles.map((tile) => buildTile(tile,leftPadding: 16+leftPadding)).toList(),
      );
    }
  }
}