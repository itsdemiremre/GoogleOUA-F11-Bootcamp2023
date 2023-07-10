import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VanPage3 extends StatefulWidget {
  static const String id = 'VanPage3_page';
  const VanPage3({super.key});

  @override
  State<VanPage3> createState() => _VanPage3State();
}

class _VanPage3State extends State<VanPage3> {
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
                'Van Day 1',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                "images/van.png",
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
                        'Add to box \$15',
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
                      Image(image: AssetImage('images/akdamar.png')),
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
                                'Your First Destination Akdamar Adası : ',
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
                      Image(image: AssetImage('images/vangölü.png')),
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
                              'Your Second Destination Van Gölü : ',
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
                      Image(image: AssetImage('images/kale.png')),
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
                              'Your Third Destination Van Kalesi : ',
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
                      Image(image: AssetImage('images/şelale.png')),
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
                              'Your Fourth Destination Muradiye Şelalesi : ',
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
                      Image(image: AssetImage('images/vanmüzesi.png')),
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
                              'Your Fourth Destination Van Müzesi : ',
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
