import 'package:fl_score_bar/fl_score_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routeviser_app/pages/istanbul2.dart';

class IstanbulPage extends StatefulWidget {
  static const String id = 'istanbul_page';
  const IstanbulPage({super.key});

  @override
  State<IstanbulPage> createState() => _IstanbulPageState();
}

class _IstanbulPageState extends State<IstanbulPage> {
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
              image: AssetImage("images/istanbul.png"),
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
                    'İstanbul',
                    style: TextStyle(
                      color: Colors.black,
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
                    style: TextStyle(color: Colors.black, fontSize: 30),
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
                          color: Colors.black,
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
                        color: Colors.black,
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
                          color: Colors.black,
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
                score: 4.5,
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
                    '3 days',
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
                      '\$45',
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
                        Navigator.pushNamed(context, IstanbulPage2.id);
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
