import 'package:flutter/material.dart';

Widget searchField(String text, IconData icon) {
  return Container(
    height: 60, // Adjust the height as per your requirement
    child: TextField(
      style: TextStyle(
          fontSize: 16), // Adjust the font size as per your requirement
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: 8), // Adjust the vertical padding as per your requirement
        hintText: text,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

Widget myButton(String text, VoidCallback onPress) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
    ),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Padding myRichText(String pText, cText) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
    child: RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: pText),
          TextSpan(
            text: cText,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ),
  );
}
