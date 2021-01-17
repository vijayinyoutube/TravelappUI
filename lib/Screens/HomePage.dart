import 'package:flutter/material.dart';
import 'dart:ui';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.55),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/image1.jpg",
                ),
              ),
            ),
            child: buildContainer(context),
          ),
        ],
      ),
    );
  }
}

Widget buildContainer(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.25,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
          ),
          child: buildDesc(),
        ),
      ),
    ),
  );
}

Widget buildDesc() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/image1.jpg",
            ),
            radius: 30.00,
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Burj Khalifa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.85), fontSize: 25.00),
                ),
                Text(
                  "The Burj Khalifa, known as the Burj Dubai prior to its inauguration in 2010, is a skyscraper in Dubai, United Arab Emirates. ",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0.25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Know more",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.white70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.blue.withOpacity(0.5)),
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Book Ticket",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.00,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.white.withOpacity(0.5),
          ),
        ],
      ),
    );
