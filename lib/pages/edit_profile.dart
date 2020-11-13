import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:EgiErdian/pages/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController urlController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFEEEEEE),
          brightness: Brightness.light,
          title: Text('Edit Profile',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
              )),
          // centerTitle: true,
          leading: CloseButton(
            color: Colors.black87,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: Icon(Icons.check),
              onPressed: () {
                // print('Clicked');
                if (usernameController.text == '' ||
                    nameController.text == '' ||
                    descriptionController.text == '' ||
                    urlController.text == '') {
                  showToast('Silahkan isi data!');
                  // showSnackBar('Silahkan isi data!');
                } else {
                  _sendDataBack(context);
                }
              },
            )
          ]),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 12,
              ),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 12,
              ),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Display Name',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 12,
              ),
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 12,
              ),
              child: TextField(
                controller: urlController,
                decoration: InputDecoration(
                  labelText: 'Photo URL',
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToast(text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  // masih belum berhasil save dengan didalam Alert dialog
  showAlertDialogMaterial(text) {
    showDialog(
      context: globalKey.currentContext,
      builder: (_) => AlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(globalKey.currentContext);
              print('Clicked No!');
            },
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              _sendDataBack(context);
              print('Clicked Yes!');
            },
          ),
        ],
        elevation: 4,
        backgroundColor: Colors.white,
      ),
      // barrierColor: Colors.black.withOpacity(0.5),
      // barrierDismissible: false,
    );
  }

  // @
  void _sendDataBack(BuildContext context) {
    List<String> list = new List<String>();
    list.add(usernameController.text);
    list.add(nameController.text);
    list.add(descriptionController.text);
    list.add(urlController.text);
    Navigator.pop(context, list);
  }
}
