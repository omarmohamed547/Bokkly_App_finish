import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class listviewimage extends StatelessWidget {
  final String imageurl;
  listviewimage({
    required this.imageurl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return custombookimage(imageurl: imageurl);
  }
}

class custombookimage extends StatelessWidget {
  const custombookimage({
    super.key,
    required this.imageurl,
  });

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          imageUrl: imageurl,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) {
            return Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
