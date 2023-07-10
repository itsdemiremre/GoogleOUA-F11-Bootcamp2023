import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IstanbulPage4 extends StatefulWidget {
  static const String id = 'istanbulPage4_page';
  const IstanbulPage4({super.key});

  @override
  State<IstanbulPage4> createState() => _IstanbulPage4State();
}

class _IstanbulPage4State extends State<IstanbulPage4> {
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
                'İstanbul Day 2',
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
                      Image(image: AssetImage('images/sultanahmet.png')),
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
                                'Your First Destination Sultanahmet Meydanı : ',
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
                      Image(image: AssetImage('images/dolmabahçe.png')),
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
                              'Your Second Destination Dolmabahçe Sarayı : ',
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
                      Image(image: AssetImage('images/galata.png')),
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
                              'Your Third Destination Galata Kulesi : ',
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
                      Image(image: AssetImage('images/boğaz.png')),
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
                              'Your Fourth Destination İstanbul Boğazı : ',
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
