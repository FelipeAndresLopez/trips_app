import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/traveling.jpg", "Felipe Andrés López",
            "1 review 5 photo", "There is an amazing place in Sri. Lanka"),
        Review("assets/img/traveling.jpg", "Felipe Andrés López",
            "1 review 5 photo", "There is an amazing place in Sri. Lanka"),
        Review("assets/img/traveling.jpg", "Felipe Andrés López",
            "1 review 5 photo", "There is an amazing place in Sri. Lanka")
      ],
    );
  }
}
