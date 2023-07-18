import 'package:flutter/material.dart';
import 'package:flutter_application_signal/login_page.dart';
import 'package:flutter_application_signal/custom_widgt/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});
  final ListBlog = [
    GetBlogPost(
        imagename: 'bitcoin.jpg',
        title: 'خرید بیتکوین',
        buy: 'خرید روی قیمت:12,340',
        sell: 'فروش روی قیمت:13,400'),
    GetBlogPost(
        imagename: 'ethereum.jpg',
        title: 'خرید اتریوم',
        buy: 'خرید روی قیمت:10.032',
        sell: 'فروش روی قیمت:12,000'),
    GetBlogPost(
        imagename: 'ripple.jpg',
        title: 'خرید ریپل',
        buy: 'خرید روی قیمت:9,064',
        sell: 'فروش روی قیمت:10,032'),
    GetBlogPost(
        imagename: 'shiba.jpg',
        title: 'خرید شیبا',
        buy: 'خرید روی قیمت:11,401',
        sell: 'فروش روی قیمت:11,989'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        elevation: 10.0,
        shadowColor: Colors.green,
        backgroundColor: Color.fromARGB(255, 65, 65, 65),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 254, 254, 254)),
        title: Text('اخبار روز'),
      ),
      backgroundColor: Color.fromARGB(255, 249, 214, 161),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Column(
                children: [
                  ...ListBlog,
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'خروج',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
