import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_practise/constraints.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      SizedBox(
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor,
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg")
                    ],
                  )),
            )
          ],
        ),
      )
    ]);
  }
}
