import 'package:flutter/material.dart';
import 'mainPage.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
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
            //padding: EdgeInsets.symmetric(horizontal: 15),
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
                    context, MaterialPageRoute(builder: (_) => MainPage()));
              },
              child: Text(
                'Login',
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
/*Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.favorite, size: 100.0, color: Colors.red),
                        Text("Régulateur")
                      ],
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                        return MainPage();
                      }));
                    },
                  )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}*/
