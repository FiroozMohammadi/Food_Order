import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resturant_app/widgets/TextWidgets.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('لیست سفارشات'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myRichText("سفارش دهنده: ", "میز ۱"),
            myRichText("موقعیت؛ ", "میز ۱"),
            Expanded(
              child: ListView.builder(
                itemCount:
                    7, // Replace with the actual number of items in your order list
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/pittza.jpg'),
                    ), // Replace with your image
                    title: const Text('گوشت'), // Replace with your title
                    subtitle: Text('۲۳۰ افغانی'), // Replace with your price
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromARGB(255, 204, 56, 45),
                      ),
                      onPressed: () {
                        // Handle delete button pressed
                      },
                    ),
                  );
                },
              ),
            ),
            myRichText('مجموعه: ', '۱۴۵۰ افغانی'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle order button pressed
                    // Add your logic here
                  },
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('سفارش'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
