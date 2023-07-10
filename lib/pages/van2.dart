import 'package:flutter/material.dart';
import 'package:routeviser_app/pages/van3.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class VanPage2 extends StatelessWidget {
  static const String id = 'VanPage2_page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Van Package',
      theme: ThemeData(
        cardColor: Color.fromARGB(255, 240, 237, 227),
      ),
      home: HomePage(title: 'Van Package Route'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F0),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(title),
        backgroundColor: Color(0xFF7C6AA6),
      ),
      body: StackedCardCarousel(
        items: [
          FancyCard(
            image: Image.asset("images/ayasofya.png"),
            title: "Day 1",
            button: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VanPage3()),
                );
              },
              child: const Text(
                "Get Detail",
                style: TextStyle(color: Color(0xFF7C6AA6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FancyCard extends StatelessWidget {
  const FancyCard({
    Key? key,
    required this.image,
    required this.title,
    required this.button,
  }) : super(key: key);

  final Image image;
  final String title;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            button,
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: Text("This is the detail page"),
      ),
    );
  }
}