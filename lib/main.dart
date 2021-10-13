import 'package:facebook_clone/login_page.dart';
import 'package:facebook_clone/signup_page.dart';
import 'package:flutter/material.dart';

import 'facebook_post.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData.dark(),
        home:
        //PostFacebook(),

        //LoginPage()
      SignupPage()
    );
  }
}
