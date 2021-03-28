import 'package:flutter/material.dart';
import 'mainPage.dart';
import 'SignIn.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = new TextEditingController();

    return new Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 120, top: 150.0, bottom: 40.0),
            child: Center(
              child: Container(
                  height: 150,
                  child: Image.asset('assets/image/logo_oxyfree.png')),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 45,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(100.0),
                    ),
                  ),
                  labelText: 'Full name',
                  hintText: 'Enter your full name',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 15, bottom: 0),
            child: Container(
              height: 45,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(100.0),
                      ),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Forgot Password ?',
              style: TextStyle(color: Colors.blueGrey, fontSize: 15),
            ),
          ),
          Container(
            height: 37,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600],
                    offset: const Offset(
                      -3.0,
                      6.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            child: FlatButton(
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MainPage(name: nameController.text)));
                }
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignIn(name: nameController.text)));
              },
              child: Text('New User? Create Account'))
        ],
      ),
    );
  }
}
