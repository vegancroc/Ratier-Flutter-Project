import 'package:flutter/material.dart';
import 'package:ratier/Pages/variables.dart';

class Stars extends StatefulWidget {
  const Stars({super.key});

  @override
  State<Stars> createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  @override
  void initState() {
    super.initState();
    Variables.starRate = 1;
    setStar();
  }

  Icon mainStar1 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon mainStar2 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon mainStar3 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon mainStar4 = Icon(
    Icons.star_border,
    size: 40.0,
  );

  Icon mainStar5 = Icon(
    Icons.star_border,
    size: 40.0,
  );

  Icon star1 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon star2 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon star3 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon star4 = Icon(
    Icons.star_border,
    size: 40.0,
  );
  Icon star5 = Icon(
    Icons.star_border,
    size: 40.0,
  );

  Icon star1Fill = Icon(
    Icons.star,
    size: 40.0,
    color: Colors.yellow,
  );
  Icon star2Fill = Icon(
    Icons.star,
    size: 40.0,
    color: Colors.yellow,
  );
  Icon star3Fill = Icon(
    Icons.star,
    size: 40.0,
    color: Colors.yellow,
  );
  Icon star4Fill = Icon(
    Icons.star,
    size: 40.0,
    color: Colors.yellow,
  );
  Icon star5Fill = Icon(
    Icons.star,
    size: 40.0,
    color: Colors.yellow,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: mainStar1,
          onTap: () {
            Variables.starRate = 1;
            setStar();
          },
        ),
        GestureDetector(
          child: mainStar2,
          onTap: () {
            Variables.starRate = 2;
            setStar();
          },
        ),
        GestureDetector(
          child: mainStar3,
          onTap: () {
            Variables.starRate = 3;
            setStar();
          },
        ),
        GestureDetector(
          child: mainStar4,
          onTap: () {
            Variables.starRate = 4;
            setStar();
          },
        ),
        GestureDetector(
          child: mainStar5,
          onTap: () {
            Variables.starRate = 5;
            setStar();
          },
        ),
      ],
    );
  }

  void setStar() {
    if (Variables.starRate == 1) {
      mainStar1 = star1Fill;
      mainStar2 = star2;
      mainStar3 = star3;
      mainStar4 = star4;
      mainStar5 = star5;
    } else if (Variables.starRate == 2) {
      mainStar1 = star1Fill;
      mainStar2 = star2Fill;
      mainStar3 = star3;
      mainStar4 = star4;
      mainStar5 = star5;
    } else if (Variables.starRate == 3) {
      mainStar1 = star1Fill;
      mainStar2 = star2Fill;
      mainStar3 = star3Fill;
      mainStar4 = star4;
      mainStar5 = star5;
    } else if (Variables.starRate == 4) {
      mainStar1 = star1Fill;
      mainStar2 = star2Fill;
      mainStar3 = star3Fill;
      mainStar4 = star4Fill;
      mainStar5 = star5;
    } else if (Variables.starRate == 5) {
      mainStar1 = star1Fill;
      mainStar2 = star2Fill;
      mainStar3 = star3Fill;
      mainStar4 = star4Fill;
      mainStar5 = star5Fill;
    }

    setState(() {});
  }
}
