// ignore_for_file: camel_case_types

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class CardVideo extends StatefulWidget {
  final Function() onTap;
  final String imgUrl;
  final String title;
  final String desc;

  const CardVideo({
    Key? key,
    required this.onTap,
    required this.imgUrl,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  State<CardVideo> createState() => _CardVideoState();
}

class _CardVideoState extends State<CardVideo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: neutral100, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                child: FancyShimmerImage(
                  imageUrl: widget.imgUrl,
                  boxFit: BoxFit.fitHeight,
                  height: 120,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                      widget.title,
                      style: semiBold14.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      widget.desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: reguler12.copyWith(color: neutral600),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
