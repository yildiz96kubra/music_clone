import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_clone/constants.dart';
import 'package:music_clone/login_screen.dart';

class MusicLogin extends StatefulWidget {
  MusicLogin({Key? key}) : super(key: key);

  @override
  State<MusicLogin> createState() => _MusicLoginState();
}

class _MusicLoginState extends State<MusicLogin> {
  @override
  Widget build(BuildContext context) {
    var songsCard2 = songsCard(
      1,
      art1,
      "Blinding Lights",
      "The Weeknd",
      '3.11',
    );
    var songsCard3 = songsCard(2, art2, "The Box", "Roddy Rich", '2.15');
    var songsCard4 = songsCard(3, art3, "Dont Start Now", "Dua Lipa", '3.52');
    var songsCard5 = songsCard(4, art4, "Circles", "Post Malone", '3.02');
    var songsCard6 = songsCard(5, art5, "Intensions", "Justin Bieber", '2.59');
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purpleAccent,
                            spreadRadius: 10,
                            blurRadius: 100,
                            offset: Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(250, 70),
                          bottomRight: Radius.elliptical(250, 70),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.shade100,
                            Colors.purple.shade400,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple.shade900,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(color: Colors.purple, blurRadius: 0)
                          ],
                          shape: BoxShape.circle,
                          color: Colors.purple.shade400,
                          image: DecorationImage(
                            image: AssetImage(albumart),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          size: 40,
                          color: Colors.purple.shade100,
                        ),
                        onPressed: () {
                          print("Account");
                        },
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 5,
                      child: IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          size: 40,
                          color: Colors.purple.shade400,
                        ),
                        onPressed: () {
                          print("More");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 375.75,
              child: Card(
                  child: Container(
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      songsCard2,
                      songsCard3,
                      songsCard4,
                      songsCard5,
                      songsCard6,
                    ],
                  ),
                ),
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.purple.shade500,
        selectedItemColor: Colors.purple,
        backgroundColor: Colors.purpleAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts_sharp),
            label: 'Podcast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label: 'Liste',
          ),
        ],
        onTap: (int index) {
          // BottomNavigationBarItem'a her dokunuşta çalışacak fonksiyon

          print(index.toString());
        },
      ),
    );
  }

  songsCard(int sr, String img, String title, String artist, String time) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$sr"),
          SizedBox(
            width: 25,
          ),
          // ignore: prefer_const_constructors
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                artist,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
              ),
            ],
          ),

          Spacer(),
          Text(time),
        ],
      ),
    ]);
  }
}
