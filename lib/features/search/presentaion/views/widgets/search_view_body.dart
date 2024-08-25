import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:bookly_app/features/search/presentaion/views/widgets/search_list.dart';
import 'package:flutter/material.dart';

class searchviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customSearchTextField(),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Search results",
            style: styles.titlestyle18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(child: searchlistviewVertical())
      ],
    );
  }
}
