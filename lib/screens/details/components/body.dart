import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/tittle_and_price.dart';
import 'package:plant_app/constraints.dart';

import '../../../components/icon_card.dart';
import '../../../components/image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TittleAndPrice(
            tittle: 'Angelica',
            country: 'Ukraine',
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                      )),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 84,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Description',
                      style: TextStyle(color: kTextColor),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding * 2)
        ],
      ),
    );
  }
}
