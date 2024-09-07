import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class listviewimage extends StatelessWidget {
  final String imageurl;
  listviewimage({
    required this.imageurl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageurl)),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
