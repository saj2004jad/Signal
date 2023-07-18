import 'package:flutter/material.dart';
import 'package:flutter_application_signal/blog_page.dart';
import 'foaget_pass.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getappbar(),
      backgroundColor: Color.fromARGB(255, 249, 214, 161),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خوش امدید',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Icon(
                    Icons.login,
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/welcomee.png'),
              ),
              SizedBox(
                height: 40.0,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(300.0, 40.0),
                    side: BorderSide(color: Colors.black),
                    primary: Colors.black),
                onPressed: () {
                  _getonpressed(context, BlogScreen());
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ثبت نام ',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 65, 65, 65),
                    minimumSize: Size(300.0, 50.0)),
              ),
              TextButton(
                onPressed: () {
                  _getonpressed(context, ForgetPass());
                },
                child: Text(
                  'فراموشی رمز عبور',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(width: double.infinity),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      centerTitle: true,
      elevation: 10.0,
      backgroundColor: Color.fromARGB(255, 65, 65, 65),
      shadowColor: Colors.green,
      title: Text('سینگال'),
    );
  }

  void _getonpressed(context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }
}
