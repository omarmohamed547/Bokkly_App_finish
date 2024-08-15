import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/customApp_bar.dart';
import 'package:bookly_app/features/home/data/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          padding: const EdgeInsets.only(left: 16),
          child: featuredlistview(),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Best Saller",
            style: styles.titlemedium,
          ),
        )
      ],
    );
  }
}
