import 'package:flutter/material.dart';

class City {
  final String name;

  City(this.name);
}

class CitySearchApp extends StatefulWidget {
  @override
  _CitySearchAppState createState() => _CitySearchAppState();
}

class _CitySearchAppState extends State<CitySearchApp> {
  List<City> cities = [
    City('Istanbul'),
    City('Ankara'),
    City('Izmir'),
    City('Bursa'),
    City('Antalya'),
    City('Adana'),
    City('Konya'),
    City('Gaziantep'),
    City('Mersin'),
    City('Diyarbakir'),
    City('Kayseri'),
    City('Eskisehir'),
    City('Gebze'),
    City('Izmit'),
    City('Denizli'),
    City('Samsun'),
    City('Sanliurfa'),
    City('Malatya'),
    City('Trabzon'),
    City('Manisa'),
  ];

  List<City> searchResults = [];

  void searchCities(String searchTerm) {
    searchResults.clear();

    if (searchTerm.isEmpty) {
      setState(() {});
      return;
    }

    cities.forEach((city) {
      if (city.name.toLowerCase().contains(searchTerm.toLowerCase())) {
        searchResults.add(city);
      }
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('City Search'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) => searchCities(value),
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index].name),
                    onTap: () {
                      // TODO: Implement your logic when a city is selected
                      // For example, navigate to a details screen
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
