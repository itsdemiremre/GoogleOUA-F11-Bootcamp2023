import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IstanbulPage5 extends StatefulWidget {
  static const String id = 'istanbulPage5_page';
  const IstanbulPage5({super.key});

  @override
  State<IstanbulPage5> createState() => _IstanbulPage5State();
}

class _IstanbulPage5State extends State<IstanbulPage5> {
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
                'İstanbul Day 3',
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
                      Image(image: AssetImage('images/kule.png')),
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
                                'Your First Destination Kız Kulesi : ',
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
                      Image(image: AssetImage('images/çarşı.png')),
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
                              'Your Second Destination Kapalı Çarşı : ',
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
                      Image(image: AssetImage('images/eminönü.png')),
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
                              'Your Third Destination Eminönü : ',
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
                      Image(image: AssetImage('images/taksim.png')),
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
                              'Your Fourth Destination Taksim Meydanı : ',
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
