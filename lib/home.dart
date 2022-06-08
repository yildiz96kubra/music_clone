import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_clone/login_screen.dart';
import 'package:music_clone/mus%C4%B1c_login.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Music App",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sign in",
                style: TextStyle(fontSize: 20),
              )),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "User Name",
                hintText: "User Name",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password",
                  prefixIcon: Icon(Icons.key)),
                  
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password",
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MusicLogin()));
              },
            ),
          ),
          Row(
            children: [
              Text('Hesabınız yok mu?'),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
