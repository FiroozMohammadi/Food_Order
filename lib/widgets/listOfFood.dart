import 'package:flutter/material.dart';
import 'package:resturant_app/Data/data.dart';

class ListOfFood extends StatefulWidget {
  const ListOfFood({Key? key}) : super(key: key);

  @override
  _ListOfFoodState createState() => _ListOfFoodState();
}

class _ListOfFoodState extends State<ListOfFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/sand.jpg'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'برنج',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '۵۰۰ افغانی',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle order button pressed
                              // Add your logic here
                            },
                            icon: Icon(Icons.shopping_cart),
                            label: Text('سفارش'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/sand.jpg'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'کباب دیگی',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '۷۵۰ افغانی',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle order button pressed
                              // Add your logic here
                            },
                            icon: Icon(Icons.shopping_cart),
                            label: Text('سفارش'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
