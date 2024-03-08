import 'package:flutter/material.dart';
import 'package:resturant_app/Data/data.dart';

class FilterFood extends StatefulWidget {
  const FilterFood({super.key});

  @override
  State<FilterFood> createState() => _FilterFoodState();
}

class _FilterFoodState extends State<FilterFood> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: food.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('images/pittza.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  food[index],
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
