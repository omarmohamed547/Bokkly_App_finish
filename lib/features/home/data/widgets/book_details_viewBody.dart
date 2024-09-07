import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/AppBar_Book_details.dart';
import 'package:bookly_app/features/home/data/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:bookly_app/features/home/data/widgets/similar_listview_bookdetails.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookdetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBarBookdetails(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .17),
                    child: listviewimage(
                      imageurl:
                          "data:image/jpeg;base64,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",
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The Jungle Book',
                    style: styles.titlestyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rudyard Kipling',
                    style: styles.titlestyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.solidStar,
                          color: Colors.yellow, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '4.8',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '(2390)',
                        style: TextStyle(fontSize: 18, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: customButton(
                            text: "19.99€",
                            style: styles.titlestyle18
                                .copyWith(color: Colors.black),
                            radius: BorderRadius.horizontal(
                                left: Radius.circular(16)),
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: customButton(
                            text: "Free preview",
                            style: styles.titlestyle18,
                            radius: BorderRadius.horizontal(
                                right: Radius.circular(16)),
                            color: Color(0xffef8262),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30), // Removed Expanded
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: styles.titlestyle16
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const similarlBooklistview(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
