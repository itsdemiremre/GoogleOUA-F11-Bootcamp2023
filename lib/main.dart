import 'package:flutter/material.dart';
import 'package:routeviser_app/bottomBar.dart';
import 'package:routeviser_app/pages/istanbul.dart';
import 'package:routeviser_app/pages/istanbul2.dart';
import 'package:routeviser_app/pages/istanbul3.dart';
import 'package:routeviser_app/pages/istanbul4.dart';
import 'package:routeviser_app/pages/istanbul5.dart';
import 'package:routeviser_app/pages/myhomepage.dart';
import 'package:routeviser_app/pages/van.dart';
import 'package:routeviser_app/pages/van2.dart';
import 'package:routeviser_app/pages/van3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: BottomBar.id,
      routes: {
        BottomBar.id: (context) => const BottomBar(),
        MyHomePage.id: (context) => const MyHomePage(),
        IstanbulPage.id: (context) => const IstanbulPage(),
        IstanbulPage2.id: (context) => IstanbulPage2(),
        IstanbulPage3.id: (context) => const IstanbulPage3(),
        IstanbulPage4.id: (context) => const IstanbulPage4(),
        IstanbulPage5.id: (context) => const IstanbulPage5(),
        VanPage.id: (context) => const VanPage(),
        VanPage2.id: (context) => VanPage2(),
        VanPage3.id: (context) => const VanPage3(),
      },
    );
  }
}
