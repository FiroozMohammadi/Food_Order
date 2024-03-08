import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 195,
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("فیروز احمد محمدی"),
              accountEmail: Text("۰۷۹۷۶۰۹۸۳۶"),
              currentAccountPictureSize: Size.square(60),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/firooz.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.food_bank_sharp),
              title: const Text('سفارشات'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('محصولات'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group_sharp),
              title: const Text('دسته بندی'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.table_bar),
              title: const Text('میزها'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group_add_sharp),
              title: const Text('کارمندان'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Qualifiation()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notes_rounded),
              title: const Text('گزارشات'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('تنظیمات'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('خروج'),
              onTap: () {},
            ),
          ],
        ));
  }
}
