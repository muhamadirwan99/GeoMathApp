// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentAppBar extends StatefulWidget {
  const ContentAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentAppBar> createState() => _ContentAppBarState();
}

class _ContentAppBarState extends State<ContentAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
            color: primaryPurple,
          ),
        ),
        Positioned.fill(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 55, left: 23, bottom: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/illustration/avatar.png",
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "Kinanti Ayu",
                            style: semiBold24.copyWith(
                              color: neutral50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Expanded(
                          child: Text(
                            "0001290310",
                            style: reguler16.copyWith(
                              color: neutral50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
