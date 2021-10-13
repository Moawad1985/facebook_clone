import 'package:facebook_clone/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostFacebook extends StatefulWidget {

  @override
  State<PostFacebook> createState() => _PostFacebookState();
}

class _PostFacebookState extends State<PostFacebook> {
  bool _isLiked = false;
  bool _isComment = false;
  bool _isShare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Post'),
      ),
      drawer: Container(
        width: 200,
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
                SizedBox(height: 10,),
                Text(
                  'Hacker Team ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black26,),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    } , child: Text('Log Out'),),

              ],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(7),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.jpg'),
                      ),
                      title: Text(
                        'Ahmed Al FAdy',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Row(
                        children: [
                          Text('16 min '),
                          Icon(
                            Icons.circle,
                            size: 7,
                            //color: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.globeAmericas,
                            size: 22,
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Icon(
                            Icons.close,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    //--------------------------------//
                    Text('الموقف الحقيقي کسب ایس کریم کیمو کونو'
                        ' بيكتب على Linkedin : بعد سنين طويلة من التعب و المجهود احب اعلن ان تم تكريمي من'
                        ' احد الشركات العالمية الي بتبحث دائما عن اكثر الناس اصرار و تأثيرا في الشرق الاوسط '
                        'و تم منحي هدية رمزية من الشركة الرئيسية . احب اقول للشباب ان الاحلام بتتحقق'
                        ' و طول ما انت مصمم تسعى ورا هدفك رغم انك دایما هتلاقي العقبات في طريقك .'
                        ' احب اشكر كل العاملين في شركة Nestle لانكم فعلا سايبين اثر طيب في ال Ecosystem بتاعنا .'),
                    //--------------------------------//
                    Container(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Row(
                            children: [
                              Icon(
                                Icons.tag_faces,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.thumb_up_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '981',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Text(
                                '31 comment',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '131 share',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/person.jpg'),
                                radius: 12,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Divider(
                              thickness: 1,
                              color: Colors.white54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isLiked = !_isLiked;
                                    });
                                  },
                                  icon: Icon(
                                    _isLiked? Icons.thumb_up :Icons.thumb_up_alt_outlined ,
                                    color: _isLiked? Colors.blue: Colors.white54,
                                  ),
                                ),

                                SizedBox(width: 5,),
                                Text(
                                  'like',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isComment = !_isComment;
                                    });
                                  }, icon: Icon(
                                  _isComment ? Icons.mode_comment : Icons.mode_comment_outlined,
                                  color: _isComment ? Colors.blue : Colors.white54,
                                ),),
                                SizedBox(width: 5,),
                                Text(
                                  'comment',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                Spacer(),
                                IconButton(
                                    color: Colors.white54,
                                    onPressed: (){
                                      setState(() {
                                        _isShare = !_isShare;
                                      });
                                    },
                                    icon: Icon(
                                      _isShare ? Icons.mobile_screen_share : Icons.mobile_screen_share_outlined,
                                      color: _isShare ? Colors.blue : Colors.white54,
                                    )),
                                // Spacer(),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------(2nd)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/animal5.jpg'),
                      ),
                      title: Text(
                        'QUEEN OF FOREST',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Row(
                        children: [
                          Text('16 min '),
                          Icon(
                            Icons.circle,
                            size: 7,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.globeAmericas,

                            size: 22,
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Icon(
                            Icons.close,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    //--------------------------------//
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('My name is lioness iam the queen o forest ',style: TextStyle(fontSize: 18),),
                    ),
                    //--------------------------------//
                    Container(

                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Row(
                            children: [
                              Icon(
                                Icons.tag_faces,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.thumb_up_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '981',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Text(
                                '31 comment',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '131 share',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/person.jpg'),
                                radius: 12,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Divider(
                              thickness: 1,
                              color: Colors.white54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isLiked = !_isLiked;
                                    });
                                  },
                                  icon: Icon(
                                    _isLiked? Icons.thumb_up :Icons.thumb_up_alt_outlined ,
                                    color: _isLiked? Colors.blue: Colors.white54,
                                  ),
                                ),

                                SizedBox(width: 5,),
                                Text(
                                  'like',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isComment = !_isComment;
                                    });
                                  }, icon: Icon(
                                  _isComment ? Icons.mode_comment : Icons.mode_comment_outlined,
                                  color: _isComment ? Colors.blue : Colors.white54,
                                ),),
                                SizedBox(width: 5,),
                                Text(
                                  'comment',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                Spacer(),
                                IconButton(
                                    color: Colors.white54,
                                    onPressed: (){
                                      setState(() {
                                        _isShare = !_isShare;
                                      });
                                    },
                                    icon: Icon(
                                      _isShare ? Icons.mobile_screen_share : Icons.mobile_screen_share_outlined,
                                      color: _isShare ? Colors.blue : Colors.white54,
                                    )),
                                // Spacer(),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //------------------------------------(3rd)
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/animal3.jpg'),
                    ),
                    title: Text(
                      'Second Animal',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        Text('16 min '),
                        Icon(
                          Icons.circle,
                          size: 7,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.globeAmericas,
                          color: Colors.black54,
                          size: 22,
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Icon(
                          Icons.close,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  //--------------------------------//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('it is the time to do my best so i will continue my challenge'
                        'it is the time to do my best so i will continue my challenge'
                        ' it is the time to do my best so i will continue my challenge',style: TextStyle(fontSize: 18),),
                  ),
                  //--------------------------------//
                  Container(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: [
                            Icon(
                              Icons.tag_faces,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.thumb_up_rounded,
                              color: Colors.blue,
                            ),
                            Text(
                              '981',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 75,
                            ),
                            Text(
                              '31 comment',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              '131 share',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/animal3.jpg'),
                              radius: 12,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.white54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    _isLiked = !_isLiked;
                                  });
                                },
                                icon: Icon(
                                  _isLiked? Icons.thumb_up :Icons.thumb_up_alt_outlined ,
                                  color: _isLiked? Colors.blue: Colors.white54,
                                ),
                              ),

                              SizedBox(width: 5,),
                              Text(
                                'like',
                                style: TextStyle(color: Colors.white54, fontSize: 16),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    _isComment = !_isComment;
                                  });
                                }, icon: Icon(
                                _isComment ? Icons.mode_comment : Icons.mode_comment_outlined,
                                color: _isComment ? Colors.blue : Colors.white54,
                              ),),
                              SizedBox(width: 5,),
                              Text(
                                'comment',
                                style: TextStyle(color: Colors.white54, fontSize: 16),
                              ),
                              Spacer(),
                              IconButton(
                                  color: Colors.white54,
                                  onPressed: (){
                                    setState(() {
                                      _isShare = !_isShare;
                                    });
                                  },
                                  icon: Icon(
                                    _isShare ? Icons.mobile_screen_share : Icons.mobile_screen_share_outlined,
                                    color: _isShare ? Colors.blue : Colors.white54,
                                  )),
                              // Spacer(),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //------------------------------------(4th)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/animal2.jpg'),
                      ),
                      title: Text(
                        'QUEEN OF FOREST',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Row(
                        children: [
                          Text('16 min '),
                          Icon(
                            Icons.circle,
                            size: 7,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            FontAwesomeIcons.globeAmericas,
                            size: 22,
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Icon(
                            Icons.close,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    //--------------------------------//
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('The way to success is not easy so keep going'
                          'The way to success is not easy so keep going'
                          ' The way to success is not easy so keep going',style: TextStyle(fontSize: 18),),
                    ),
                    //--------------------------------//
                    Container(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Row(
                            children: [
                              Icon(
                                Icons.tag_faces,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.thumb_up_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '981',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Text(
                                '31 comment',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '131 share',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/animal2.jpg'),
                                radius: 12,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Divider(
                              thickness: 1,
                              color: Colors.white54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isLiked = !_isLiked;
                                    });
                                  },
                                  icon: Icon(
                                    _isLiked? Icons.thumb_up :Icons.thumb_up_alt_outlined ,
                                    color: _isLiked? Colors.blue: Colors.white54,
                                  ),
                                ),

                                SizedBox(width: 5,),
                                Text(
                                  'like',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isComment = !_isComment;
                                    });
                                  }, icon: Icon(
                                  _isComment ? Icons.mode_comment : Icons.mode_comment_outlined,
                                  color: _isComment ? Colors.blue : Colors.white54,
                                ),),
                                SizedBox(width: 5,),
                                Text(
                                  'comment',
                                  style: TextStyle(color: Colors.white54, fontSize: 16),
                                ),
                                Spacer(),
                                IconButton(
                                    color: Colors.white54,
                                    onPressed: (){
                                      setState(() {
                                        _isShare = !_isShare;
                                      });
                                    },
                                    icon: Icon(
                                      _isShare ? Icons.mobile_screen_share : Icons.mobile_screen_share_outlined,
                                      color: _isShare ? Colors.blue : Colors.white54,
                                    )),
                                // Spacer(),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
