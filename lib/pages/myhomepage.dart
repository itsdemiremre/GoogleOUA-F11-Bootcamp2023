import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:routeviser_app/pages/van.dart';

import 'istanbul.dart';

class MyHomePage extends StatefulWidget {
  static const String id = 'my_home_page';
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _controller;

  List<Product> products = [
    Product(name: 'Product 1', category: 'Most Liked'),
    Product(name: 'Product 2', category: 'Recommended'),
    Product(name: 'Product 2', category: 'Expensive'),
    Product(name: 'Product 2', category: 'Cheap'),
  ];

  List<String> categories = [
    'All',
    'Most Liked',
    'Recommended',
    'Expensive',
    'Expensive'
  ];

  String selectedCategory = 'All';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F4F0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 246, 244, 237),
        title: const Text(
          "Routeviser",
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 15.0),
              onPressed: () {
                //_loadProfilePhoto;
              },
              icon: Image.asset(
                  'images/profile.png') //Image(image: _profilePhoto),
              ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 5, left: 5)),
                // search textfield
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                // filter button
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: SizedBox(
                        width: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Icon(
                            Icons.format_list_bulleted_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 50,
                  width: 3000,
                  child: Column(
                    children: [
                      Row(
                        children: categories.map((category) {
                          return FilterChip(
                            label: Text(category),
                            selected: selectedCategory == category,
                            onSelected: (isSelected) {
                              setState(() {
                                selectedCategory =
                                    isSelected ? category : 'All';
                              });
                            },
                          );
                        }).toList(),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: ((context, index) {
                            if (selectedCategory == 'All' ||
                                selectedCategory == products[index].category) {
                              return ListTile(
                                title: Text(products[index].name),
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 7, left: 7)),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/istanbul.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 320,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 60,
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 1,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 5,
                                child: SizedBox(
                                  width: 31.43,
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF2D3134),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Text(
                          'İSTANBUL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'İstanbul, Türkiye',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$45',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            TextButton(
                                style: ButtonStyle(
                                  overlayColor:
                                      MaterialStatePropertyAll(Colors.white38),
                                  side: MaterialStatePropertyAll(BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white)),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, IstanbulPage.id);
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      'Add',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.airplane_ticket_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/antalya.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 320,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 60,
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 1,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 5,
                                child: SizedBox(
                                  width: 31.43,
                                  child: Text(
                                    '4.0',
                                    style: TextStyle(
                                      color: Color(0xFF2D3134),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Text(
                          'Adrasan Koyu',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Antalya, Türkiye',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$75',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            TextButton(
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStatePropertyAll(Colors.white38),
                                side: MaterialStatePropertyAll(BorderSide(
                                    style: BorderStyle.solid,
                                    color: Colors.white)),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.airplane_ticket_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/van.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 320,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 60,
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 1,
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow[600],
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 5,
                                child: SizedBox(
                                  width: 31.43,
                                  child: Text(
                                    '3.8',
                                    style: TextStyle(
                                      color: Color(0xFF2D3134),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Text(
                          'Van',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Van, Türkiye',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$15',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            TextButton(
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStatePropertyAll(Colors.white38),
                                side: MaterialStatePropertyAll(BorderSide(
                                    style: BorderStyle.solid,
                                    color: Colors.white)),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, VanPage.id);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.airplane_ticket_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String category;

  Product({required this.name, required this.category});
}
