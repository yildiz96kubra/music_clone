import 'package:flutter/material.dart';

//Colors
const cwhite = Color(0xFFEAEBF3);
const cblue = Color(0xFF0A3068);
//images
const button = "assets/images/button.png";
const disk = "assets/images/disk.png";
const albumart = "assets/images/AlbumArt.jpg";
const pop = "assets/images/pop.jpg";
const hiphop = "assets/images/hiphop.jpg";
const heavymetal = "assets/images/heavymetal.jpg";
const country = "assets/images/country.jpg";
const scard = "assets/images/scard.png";
const gcard = "assets/images/gcard.png";
const art1 = "assets/images/Art1.jpg";
const art2 = "assets/images/Art2.jpg";
const art3 = "assets/images/Art3.jpg";
const art4 = "assets/images/Art4.jpg";
const art5 = "assets/images/Art5.jpg";

//ButtonWidget
Widget cbutton(String symbol) {
  var SvgPicture;
  return Container(
    padding: EdgeInsets.fromLTRB(25, 25, 20, 20),
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(button),
      ),
    ),
    child: SvgPicture.asset(
      symbol,
    ),
  );
}
