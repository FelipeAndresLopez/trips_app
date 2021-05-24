import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'serach_trips.dart';
import 'profile_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int indexTab = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
