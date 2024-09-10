import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/similar_listview_bookdetails.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "you can also like ",
          style: styles.titlestyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        similarlBooklistview(),
      ],
    );
  }
}
