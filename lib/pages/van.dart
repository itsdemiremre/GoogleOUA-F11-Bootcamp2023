import 'package:fl_score_bar/fl_score_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routeviser_app/pages/van2.dart';

class VanPage extends StatefulWidget {
  static const String id = 'van_page';
  const VanPage({super.key});

  @override
  State<VanPage> createState() => _VanPageState();
}

class _VanPageState extends State<VanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BackButton(
        color: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/van.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Van',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Türkiye',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 114,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    left: 20,
                  )),
                  Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.79),
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FFFFFFF),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Container(
                    width: 114,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              IconScoreBar(
                scoreIcon: Icons.star,
                iconColor: Colors.amber,
                score: 3.8,
                maxScore: 5,
                readOnly: false,
                onChanged: (value) {
                  print('IconScoreBar updated value -> $value');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(15)),
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1 day',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '\$15',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          const Color.fromARGB(198, 255, 255, 255)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(144, 238, 238, 238)),
                      side: MaterialStatePropertyAll(BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_circle_up_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, VanPage2.id);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
