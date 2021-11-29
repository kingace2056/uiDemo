import "package:flutter/material.dart";
import 'package:ui_practise/constraints.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this will provide the dimension of the screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // this will fill 20% of our total screen
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            //border radius only will provide us only the specified border to be curved in given radius
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        )
      ],
    );
  }
}
