import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IstanbulPage3 extends StatefulWidget {
  static const String id = 'istanbulPage3_page';
  const IstanbulPage3({super.key});

  @override
  State<IstanbulPage3> createState() => _IstanbulPage3State();
}

class _IstanbulPage3State extends State<IstanbulPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F0),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF7C6AA6),
            expandedHeight: 300,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'İstanbul Day 1',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                "images/istanbul.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add to box \$45',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.white38),
                        side: MaterialStatePropertyAll(BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/ayasofya.png')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Color.fromARGB(55, 133, 120, 164))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              Text(
                                'Your First Destination Ayasofya Camii : ',
                                style: TextStyle(color: Color(0xFF7C6AA6)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'click to navigation',
                                style: TextStyle(color: Color(0xFF7C6AA6)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Icon(Icons.keyboard_double_arrow_down_sharp),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/topkapı.png')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Color.fromARGB(55, 133, 120, 164))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text(
                              'Your Second Destination Topkapı Sarayı Müzesi: ',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'click to navigation',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Icon(Icons.keyboard_double_arrow_down_sharp),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/yerebatan.png')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Color.fromARGB(55, 133, 120, 164))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text(
                              'Your Third Destination Yerebatan Sarnıcı : ',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'click to navigation',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Icon(Icons.keyboard_double_arrow_down_sharp),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Container(
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/sultan.png')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Color.fromARGB(55, 133, 120, 164))),
                        onPressed: () {},
                        child: Column(
                          children: [
                            Text(
                              'Your Fourth Destination Sultan Ahmet Camii : ',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'click to navigation',
                              style: TextStyle(color: Color(0xFF7C6AA6)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
