import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'login_page.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'javan'),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 214, 161),
        appBar: AppBar(
          leading: BackButton(),
          elevation: 10.0,
          backgroundColor: Colors.black,
          title: Center(
            child: Text('سیگنال'),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'بازیابی رمز عبور',
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}
