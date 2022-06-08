import 'package:flutter/material.dart';
import 'package:music_clone/constants.dart';
import 'package:music_clone/home.dart';
import 'package:music_clone/mus%C4%B1c_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 var values;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: BackButton(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MusicLogin()),
                  );
                },
              ),
              Spacer(),
              Text(
                'NOW PLAYING',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              Spacer(),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(100),
            height: 250,
            width: 250,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(disk))),
            child: CircleAvatar(
                backgroundImage: AssetImage(albumart),
                child: CircleAvatar(
                  backgroundColor: cwhite,
                  radius: 25,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          // Now we will create Song Title and Artist name Texts
          Text(
            "You Need To Calm Down",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Taylor Swift",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 20,
          ),

          //Now we will create Music Controller Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                Icons.skip_previous_sharp,
                size: 50,
              ),
              Icon(
                Icons.play_arrow,
                size: 50,
              ),
              Icon(
                Icons.skip_next,
                size: 50,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),

          //Now we will create Wave song progress bar
          Center(
            child: WaveProgressBar(
              progressPercentage: 30,
              listOfHeights: values,
              width: 350,
              initalColor: cblue.withAlpha(10),
              progressColor: cblue,
              backgroundColor: cwhite,
              timeInMilliSeconds: 30,
              isHorizontallyAnimated: false,
              isVerticallyAnimated: false,
            ),
          ),

          SizedBox(
            height: 10,
          ),
         

          // Now we will create Song TimeStamp
          RichText(
            text: TextSpan(
              style: TextStyle(
                  color: cblue.withAlpha(100), fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: '00:00' " ",
                    style:
                        TextStyle(color: cblue, fontWeight: FontWeight.bold)),
                TextSpan(text: ' | '),
                TextSpan(text: '03:15'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
WaveProgressBar(
    {required int progressPercentage,
    listOfHeights,
    required int width,
    required Color initalColor,
    required Color progressColor,
    required Color backgroundColor,
    required int timeInMilliSeconds,
    required bool isHorizontallyAnimated,
    required bool isVerticallyAnimated}) {}
