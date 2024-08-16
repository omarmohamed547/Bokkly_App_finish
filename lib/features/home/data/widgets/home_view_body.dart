import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/best_saller_list_item.dart';
import 'package:bookly_app/features/home/data/widgets/customApp_bar.dart';
import 'package:bookly_app/features/home/data/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homeviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24, left: 24, top: 60, bottom: 25),
          child: CustomAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: featuredlistview(),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Best Saller",
            style: styles.titlestyle18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: bestSallerListItem(),
        ),
      ],
    );
  }
}
