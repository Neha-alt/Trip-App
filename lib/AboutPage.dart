
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class AboutPage extends StatelessWidget {
  final AssetImage image;
  final IconData ic;
  final String place;
  final String dur;
  AboutPage({this.image, this.ic, this.place, this.dur});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Material(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SlidingUpPanel(
              body: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 40,
                    child: FaIcon(
                      ic,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 40,
                    child: Text(
                      place,
                      style: TextStyle(
                        fontSize:50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 420,
                    left: 40,
                    child: Text(
                      dur,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              panelBuilder: (sc) => _panel(sc),
              borderRadius:BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),

            ),
          ],
        ),
      ),
    );
  }
}

Widget _panel(ScrollController sc) {
  return ListView(
    controller: sc,
    children: <Widget>[
      Column(
        children: [
          FaIcon(FontAwesomeIcons.angleDoubleUp,color: Colors.black45,),
          Padding(
            padding: const EdgeInsets.only( top: 48,left: 20, right: 20),
            child: Text(
              'The best skilling holiday',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Despite spending the last decade as Europe’s fastest-rising holiday destination, Croatia still doesn’t feel overrun with tourists. With new developments kept on a human scale and businesses retaining a pronounced local flavour, the Adriatic coast emphatically retains a unique character.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
              maxLines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.clock,
                              size: 27,
                            ),
                            Text(
                              '8 hours',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.road,
                              size: 27,
                            ),
                            Text(
                              '933 KM',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.car,
                              size: 27,
                            ),
                            Text(
                              '    Car   ',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('images/map3.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(right: 60,left: 60,top: 15,bottom: 15),
                child: Text(
                  'Book Tickets Now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
