import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(Object context) {
    String descriptionDummy =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit eu non pro id el us elementum et. Lorem ipsum dolor sit amet, consectetur adipiscing elit eu non pro id el us elementum et";

    return Stack(
      children: <Widget>[
        ListView(children: <Widget>[
          new DescriptionPlace("Bahamas", 4, descriptionDummy),
          new ReviewList()
        ]),
        HeaderAppBar()
      ],
    );
  }
}
