import 'package:flutter/material.dart';
import 'package:EgiErdian/pages/edit_profile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String username = 'Your ID',
      name = 'Your Name',
      description = 'Your Description',
      url = 'https://i.ibb.co/6ZbB65B/img.jpg';
  // 'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          brightness: Brightness.light,
          title: Text(username,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          // centerTitle: true,
          leading: IconButton(
            color: Colors.black87,
            icon: Icon(Icons.add),
            onPressed: () {
              print('Add');
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Menu Clicked!');
              },
            )
          ]),
      body: Container(
        padding: EdgeInsets.only(
          // top: 0,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'See more about Covid-19',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                  ),
                ),
              ),
              height: 35,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                            url,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          // widget.name,
                          '0',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // widget.name,
                          'Post',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          // widget.name,
                          '1500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // widget.name,
                          'Followers',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          // widget.name,
                          '10',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // widget.name,
                          'Following',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                description,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.black26)),
                    color: Colors.white12,
                    textColor: Colors.black87,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => EditProfile(),
                      //   ),
                      // );
                      _awaitReturnValueFromSecondScreen(context);
                    },
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.black26)),
                    color: Colors.white12,
                    textColor: Colors.black87,
                    onPressed: () {},
                    child: Text(
                      'Promotions',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.black26)),
                    color: Colors.white12,
                    textColor: Colors.black87,
                    onPressed: () {},
                    child: Text(
                      'Insight',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditProfile(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      username = result[0];
      name = result[1];
      description = result[2];
      url = result[3];
    });
  }
}
