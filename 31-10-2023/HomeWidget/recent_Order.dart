import 'package:flutter/material.dart';

class RecentOrder extends StatefulWidget {
  const RecentOrder({super.key});

  @override
  State<RecentOrder> createState() => _RecentOrderState();
}

class _RecentOrderState extends State<RecentOrder> {

  final List<Map<String, String>> orders = [
    {
      'name': 'Abhishek',
      'amount': '₹50',
      'id': '123',
      'order': 'Item 1',
      'time': '10:00 AM',
    },
    {
      'name': 'Sahil',
      'amount': '\$30',
      'id': '124',
      'order': 'Item 2',
      'time': '11:30 AM',
    },
    {
      'name': 'Rohan',
      'amount': '\$70',
      'id': '125',
      'order': 'Item 3',
      'time': '1:45 PM',
    },
    {
      'name': 'Rishi',
      'amount': '\$40',
      'id': '126',
      'order': 'Item 4',
      'time': '3:15 PM',
    },
  ];
  final List<String> product = ["sugar", "rice", "soap", "flour"];
  final List<String> amount = ["1 kg", "2 kg", "2 Dozen", "5 kg"];
  final List<String> price = ["₹50", "₹70", "₹200", "₹150"];

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:EdgeInsets.only(
          left: 15.0, right: 15.0),
      height: 420,
      child:  Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              final order = orders[index];
              return Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 10.0),

                  child: Card(
                    elevation: 5, // Add elevation to make it appear as a card
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListTile(
                        title: Column(
                          children: [
                            Container(
                              height: 25,
                              width: double.infinity,
                              color: const Color(0xFFDADADA),
                              child: const Center(
                                child: Text('Preparing',style: TextStyle(color: Colors.black,fontSize: 15),),
                              ),
                            ),
                            Row(
                              children: [
                                Text('Order ID: ${order['id']}'),
                                const Spacer(),
                                Text(order['time']!,style: TextStyle(color: Colors.black,fontSize: 12),),
                                PopupMenuButton<String>(
                                  // onSelected: _selectOption,
                                  itemBuilder: (BuildContext context) {
                                    return {'See order Details'}.map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Text(choice),
                                      );
                                    }).toList();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        subtitle: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [

                                Text('${order['name']}\'s Order',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                const Spacer(),
                                const Text('Takeaway',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),)
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Visibility(
                                child: Row(
                                  children: [
                                    Text('${amount[index]} ${product[index]}',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                    const Spacer(),
                                    Text(price[index],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),)
                                  ],
                                )
                            ),
                            const SizedBox(height: 10),
                            //
                            // const SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  color: Colors.blue[900],
                                  width: 170,
                                  child: ElevatedButton(onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue[900],
                                        // elevation: 3, // Remove button elevation if not needed
                                      ),
                                      child: const Center(
                                          child: Text('Make Order Ready',style: TextStyle(color: Colors.white,fontSize: 12),))
                                  ),
                                ),
                                Spacer(),
                                Text('Total Bill: ${price[index]} ',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),

    );
  }
}
