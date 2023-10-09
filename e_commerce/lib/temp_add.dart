// Row(
//   children: [
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Grocery';
//              });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 10,left: 20,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13)),
//
//           ),
//           child: Image.asset('assets/images/c1.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Cloth';
//               });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13)),
//
//           ),
//           child: Image.asset('assets/images/c14.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Kids';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 10,left: 5,right:13,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c13.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Electronic';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 10,bottom: 0,right: 20),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c12.png'),
//         ),
//       ),
//     ),
//   ],
// ),
// Row(
//   children: [
//     Expanded(
//         child: Container(
//             margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
//             child: Center(child: Text(' Grocery',style: TextStyle(fontSize: 13),)))
//     ),
//
//     Expanded(
//       child: Container(
//
//           margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
//           child: Center(child: Text('Fashion',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//     Expanded(
//       child: Container(
//
//           margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
//           child: Center(child: Text('Kids',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//     Expanded(
//       child: Container(
//           height: 35,
//
//           margin: EdgeInsets.only(bottom: 10,right: 20),
//           child: Center(child: Text('Electric',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//   ],
// ),
//
// Row(
//   children: [
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Accessories';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 0,left: 20,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c8.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Home';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 0,left: 15,right:5,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c9.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Food';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c10.png'),
//         ),
//       ),
//     ),
//     Expanded(
//       child: InkWell(
//         onTap: (){
//           setState(() {
//             category = 'Beauty';
//           });
//         },
//         child: Container(
//           padding: EdgeInsets.all(18),
//           margin: EdgeInsets.only(top: 0,left: 5,right:20,bottom: 0),
//           height: 70,
//           width: 55,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(13))
//           ),
//           child: Image.asset('assets/images/c11.png'),
//         ),
//       ),
//     ),
//
//   ],
// ),
// Row(
//   children: [
//     Expanded(
//         child: Container(
//
//             margin: EdgeInsets.only(top: 5,left: 15,right:5,bottom: 10),
//             child: Center(child: Text(' Accessories',style: TextStyle(fontSize: 13),)))
//     ),
//     Expanded(
//       child: Container(
//
//           margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
//           child: Center(child: Text('Home',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//     Expanded(
//       child: Container(
//
//           margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
//           child: Center(child: Text('Food',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//     Expanded(
//       child: Container(
//
//           margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
//           child: Center(child: Text('Beauty',style: TextStyle(fontSize: 13)))
//       ),
//     ),
//
//   ],
// ),
// Visibility(
//   child: Column(
//     children: [
//       Row(
//         children: [
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Fruits & Vegetables';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 20,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g4.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Sweets';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g6.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Bakery & Namkeen';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 5,right:13,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g6.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Stationery';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,bottom: 0,right: 20),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g7.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           Expanded(
//               child: Container(
//                   margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
//                   child: Center(child: Text(' Fruits & Vegetables',style: TextStyle(fontSize: 13),)))
//           ),
//
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
//                 child: Center(child: Text('Sweets',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
//                 child: Center(child: Text('Bakery & Namkeen',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//                 height: 35,
//
//                 margin: EdgeInsets.only(bottom: 10,right: 20),
//                 child: Center(child: Text('Stationery',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Food & Snacks';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 0,left: 20,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/c10.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Books';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 0,left: 15,right:5,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g8.jpeg'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Art & Home Decor';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/c9.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Pharma & Wellness';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 0,left: 5,right:20,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/c11.png'),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//       Row(
//         children: [
//           Expanded(
//               child: Container(
//
//                   margin: EdgeInsets.only(top: 5,left: 15,right:5,bottom: 10),
//                   child: Center(child: Text(' Food & Snacks',style: TextStyle(fontSize: 13),)))
//           ),
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
//                 child: Center(child: Text('Books',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
//                 child: Center(child: Text('Art & Home Decor',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
//                 child: Center(child: Text('Pharma & Wellness',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//
//         ],
//       ),
//       Row(
//         children: [
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Beauty & Cosmetics';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 20,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/c11.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Baby Care';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g9.jpeg'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Pet Care';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,left: 5,right:13,bottom: 0),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/g10.jpeg'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: (){
//                 setState(() {
//                   category = 'Sanitary & Hardware';
//                 });
//               },
//               child: Container(
//                 padding: EdgeInsets.all(18),
//                 margin: EdgeInsets.only(top: 10,bottom: 0,right: 20),
//                 height: 70,
//                 width: 55,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(13))
//                 ),
//                 child: Image.asset('assets/images/c12.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           Expanded(
//               child: Container(
//                   margin: EdgeInsets.only(left: 15,right:5,bottom: 10),
//                   child: Center(child: Text(' Beauty & Cosmetics',style: TextStyle(fontSize: 13),)))
//           ),
//
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
//                 child: Center(child: Text('Baby Care',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//
//                 margin: EdgeInsets.only(left: 5,right:13,bottom: 10),
//                 child: Center(child: Text('Pet Care',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//           Expanded(
//             child: Container(
//                 height: 35,
//
//                 margin: EdgeInsets.only(bottom: 10,right: 20),
//                 child: Center(child: Text('Sanitary & Hardware',style: TextStyle(fontSize: 13)))
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
//   maintainSize: false,
//   maintainAnimation: true,
//   maintainState: true,
//   visible:  viewMore,
// ),
// Container(
//   height: 30,
//   width: double.maxFinite,
//   child: Center(
//     child: InkWell(
//       onTap: (){
//         setState(() {
//           if(viewMore==false){
//             viewMore = true;
//             viewML = 'View less';
//           }else{
//             viewMore = false;
//             viewML = 'View more categories';
//           }
//
//         });
//       },
//       child: Text(
//         viewML,
//         style: TextStyle(
//           fontSize: 15,
//           fontFamily: 'Poppins',
//           color: Colors.lightBlue.shade900,
//         ),
//       ),
//     ),
//   ),
// ),
// Container(
//   margin: EdgeInsets.only(left: 20,right: 20,top: 20),
//   child: Text(
//     category,
//     style: TextStyle(
//       fontSize: 18,
//       fontFamily: 'Poppins',
//       color: Colors.black87,
//     ),
//   ),
// ),