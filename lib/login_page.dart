
import 'package:facebook_clone/facebook_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Zerocool App')),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Column(
                        children:[
                          Icon(FontAwesomeIcons.facebook,size: 150,color: Colors.blue,),
                         TextFormField(
                            controller:_controller ,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: 'please enter your name',
                              labelText: 'Name *',

                            ),


                          )
                          ,TextFormField(
                            controller:_controller ,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              hintText: 'enter your email',
                              labelText: 'Email:',
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PostFacebook()),
                                );
                              } , child: Text('log in'))
                        ]

                    )

                ),
              ],
            )



        ));


  }
}