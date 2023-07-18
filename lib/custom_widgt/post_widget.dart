import 'package:flutter/material.dart';
import 'package:flutter_application_signal/blog_page.dart';

Widget GetBlogPost(
    {required String title,
    required String imagename,
    required String buy,
    required String sell}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage('images/$imagename'),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          '$title',
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
          textAlign: TextAlign.center,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15.0,
            height: 35.0,
          ),
          Text(
            '$buy',
            style: TextStyle(fontSize: 20.0, color: Colors.red),
            textAlign: TextAlign.center,
          ),
          Icon(
            Icons.point_of_sale,
          ),
          SizedBox(
            width: 15.0,
            height: 35.0,
          ),
          Text(
            '$sell',
            style: TextStyle(fontSize: 20.0, color: Colors.green),
            textAlign: TextAlign.center,
          ),
          Icon(
            Icons.shopping_cart,
          ),
        ],
      ),
      Container(
        width: 250.0,
        child: Divider(
          color: Colors.black,
          height: 15.0,
          thickness: 1,
        ),
      ),
    ],
  );
}
