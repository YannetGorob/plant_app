import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

import '../../../components/featured_plants.dart';
import '../../../components/header_with_search.dart';
import '../../../components/recommend_plant.dart';
import '../../../components/tittle_with_more.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearhBox(size: size),
          TittleWithMoreBtn(tittle: 'Recomended', press: () {}),
          RecommendsPlant(),
          TittleWithMoreBtn(
            tittle: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

