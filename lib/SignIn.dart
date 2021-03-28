import 'package:flutter/material.dart';
import 'mainPage.dart';

class SignIn extends StatefulWidget {
  final String name;

  SignIn({Key key, this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
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
                    hintText: 'Enter your first and last name'),
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 15, bottom: 0),
            child: Container(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(100.0),
                      ),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
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
            onPressed: () {
              //TODO FORGOT PASSWORD SCREEN GOES HERE
            },
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainPage(name: nameController.text)));
              },
              child: Text(
                'SignIn',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Text('New User? Create Account')
        ],
      ),
    );
  }
}
