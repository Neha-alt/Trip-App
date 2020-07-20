import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytrips_app/TripCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mytrips_app/AboutPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Trips',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                              size: 25,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.globeAsia,
                              size: 25,
                              color: Colors.black38,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TripCard(
                    img: AssetImage('images/Croatia.jpg'),
                    icon: FontAwesomeIcons.sun,
                    place: 'Croatia',
                    pic: AssetImage('images/user.png'),
                    duration: 'Summer 2016 - 8 days',
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/Croatia.jpg'),
                            ic:  FontAwesomeIcons.sun,
                            place: 'Croatia',
                            dur:  'Summer 2016 - 8 days',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('images/warsaw.jpg'),
                    icon: FontAwesomeIcons.leaf,
                    place: 'Warsaw',
                    duration: 'Spring 2017 - 5 days',
                    pic: AssetImage('images/user.png'),
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/warsaw.jpg'),
                            ic:  FontAwesomeIcons.leaf,
                            place: 'Warsaw',
                            dur:  'Spring 2017 - 5 days',
                          );
                        }),
                      );
                    }
                ),
                TripCard(
                    img: AssetImage('images/kappl2.jpg'),
                    icon: FontAwesomeIcons.snowflake,
                    place: 'Kappl',
                    duration: 'Winter 2017 - 8 days',
                    pic: AssetImage('images/user.png'),
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/kappl2.jpg'),
                            ic:  FontAwesomeIcons.sun,
                            place: 'Kappl',
                            dur:  'Winter 2017 - 8 days',
                          );
                        }),
                      );
                    }
                ),
                TripCard(
                    img: AssetImage('images/rotterdam.jpg'),
                    icon: FontAwesomeIcons.snowflake,
                    place: 'Rotterdam',
                    duration: 'Winter 2018 - 10 days',
                    pic: AssetImage('images/user.png'),
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/rotterdam.jpg'),
                            ic:  FontAwesomeIcons.sun,
                            place: 'Rotterdam',
                            dur:  'Winter 2018 - 10 days',
                          );
                        }),
                      );
                    }
                ),
                TripCard(
                    img: AssetImage('images/california.jpg'),
                    icon: FontAwesomeIcons.sun,
                    place: 'California',
                    duration: 'Summer 2018 - 8 days',
                    pic: AssetImage('images/user.png'),
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/california.jpg'),
                            ic:  FontAwesomeIcons.sun,
                            place: 'California',
                            dur:  'Summer 2018 - 8 days',
                          );
                        }),
                      );
                    }
                ),
                TripCard(
                    img: AssetImage('images/paris-1.jpg'),
                    icon: FontAwesomeIcons.leaf,
                    place: 'Paris',
                    duration: 'Spring 2019 - 8 days',
                    pic: AssetImage('images/user.png'),
                    pic2: AssetImage('images/user2.png'),
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('images/paris-1.jpg'),
                            ic:  FontAwesomeIcons.sun,
                            place: 'Paris',
                            dur:  'Spring 2019 - 8 days',
                          );
                        }),
                      );
                    }
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
