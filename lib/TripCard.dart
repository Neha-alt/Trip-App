import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TripCard extends StatelessWidget {
  final AssetImage img;
  final IconData icon;
  final String place;
  final String duration;
  final Function function;
  final AssetImage pic;
  final AssetImage pic2;
  TripCard({
    this.img, this.icon, this.place, this.duration, this.pic,this.pic2, this.function,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Material(
              borderRadius: BorderRadius.all(Radius.circular(20),),
              elevation: 200.0,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  image: DecorationImage(
                    image: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 40,
              child: IconButton(
                icon:FaIcon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: (){},
              ),
            ),
            Positioned(
              top: 140,
              left: 40,
              child: Text(
                place,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: Text(
                duration,
                style: TextStyle(
                  fontSize: 25,
//                fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            Positioned(
              left: 310,
              top: 140,
              child: Image(
                image: pic,
                height: 50,
              ),
            ),
            Positioned(
              left: 280,
              top: 140,
              child: Image(
                image: pic2,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
