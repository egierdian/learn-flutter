import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // final String name;

  // Profile({@required this.name});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          brightness: Brightness.light,
          title: Text('Your ID',
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
              print('Closed');
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Clicked');
              },
            )
          ]),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: <Widget>[
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
                            'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg',
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
                          '1',
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
                'Your Name',
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
                'Your Description',
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
                    onPressed: () {},
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
}
