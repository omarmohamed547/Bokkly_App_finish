import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/AppBar_Book_details.dart';
import 'package:bookly_app/features/home/data/widgets/BookdetailsSection.dart';
import 'package:bookly_app/features/home/data/widgets/Similar_Books_Section.dart';
import 'package:bookly_app/features/home/data/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:bookly_app/features/home/data/widgets/similar_listview_bookdetails.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookdetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBarBookdetails(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SimilarBookSection(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
