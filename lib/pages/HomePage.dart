import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resturant_app/pages/OrderPage.dart';
import 'package:resturant_app/widgets/Drawer.dart';
import 'package:resturant_app/widgets/TextWidgets.dart';
import 'package:resturant_app/widgets/filterFood.dart';
import 'package:resturant_app/widgets/listOfFood.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          drawer: const MyDrawer(),
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                child: searchField('جستجو', Icons.search),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: FilterFood(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myButton('لیست غذاها', () {}),
                    myButton('داخلی', () {}),
                    myButton('بیرونی', () {})
                  ],
                ),
              ),
              const Expanded(child: ListOfFood())
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderPage()));
            },
            child: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
