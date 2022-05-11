import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

class TittleAndPrice extends StatelessWidget {
  const TittleAndPrice({
    Key? key, required this.tittle, required this.country, required this.price,
  }) : super(key: key);

final String tittle, country;
final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$tittle\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: country,
                    style: TextStyle(
                        fontSize: 20,
                        color: kTextColor,
                        fontWeight: FontWeight.w300))
              ],
            ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
