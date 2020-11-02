import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:conti/custom/custom_button.dart';
// import 'package:conti/pages/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = new TextEditingController();

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
              print('Closed');
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black87,
              icon: Icon(Icons.check),
              onPressed: () {
                print('Clicked');
              },
            )
          ]),
      body: Container(
        padding: EdgeInsets.only(
          top: 64,
          bottom: 64,
          left: 24,
          right: 24,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container(
            //   child: Center(
            //     child: Text(
            //       'EDIT PROFILE',
            //       style: TextStyle(fontSize: 40, color: Colors.blueAccent),
            //     ),
            //   ),
            // ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              child: CustomButton(
                text: 'Update',
                onPressed: () {
                  if (nameController.text == '') {
                    //showToast('Please input your name');
                    //showSnackBar('Please input your name');
                    //showAlertDialogMaterial('Please input your name');
                    showAlertDialogCupertino('Please input your name');
                  } else {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Profile(
                    //       name: nameController.text,
                    //     ),
                    //   ),
                    // );
                  }
                },
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

  showSnackBar(text) {
    final snackbar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          print('Clicked Undo!');
        },
      ),
    );
    globalKey.currentState.showSnackBar(snackbar);
  }

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
              print('Clicked Yes!');
            },
          ),
        ],
        elevation: 4,
        backgroundColor: Colors.white,
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: false,
    );
  }

  showAlertDialogCupertino(text) {
    showDialog(
      context: globalKey.currentContext,
      builder: (_) => CupertinoAlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(globalKey.currentContext);
              print('Clicked No!');
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
            },
          ),
        ],
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: false,
    );
  }
}
