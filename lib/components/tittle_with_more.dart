import 'package:flutter/material.dart';

import '../constraints.dart';

class TittleWithMoreBtn extends StatelessWidget {
  const TittleWithMoreBtn({
    Key? key,
    required this.tittle,
    required this.press,
  }) : super(key: key);
  final String tittle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TittleWithCustomerLine(
            text: tittle,
          ),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}

class TittleWithCustomerLine extends StatelessWidget {
  const TittleWithCustomerLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ))
      ]),
    );
  }
}
