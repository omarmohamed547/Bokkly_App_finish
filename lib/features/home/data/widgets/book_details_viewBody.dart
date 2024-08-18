import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/AppBar_Book_details.dart';
import 'package:bookly_app/features/home/data/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookdetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarBookdetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: listviewimage(),
            ),
            SizedBox(height: 20),
            Text('The Jungle Book',
                style:
                    styles.titlestyle30.copyWith(fontWeight: FontWeight.bold)),
            Text('Rudyard Kipling',
                style: styles.titlestyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[400],
                )),
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
              ], //19.99€
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
                      style: styles.titlestyle18.copyWith(color: Colors.black),
                      radius:
                          BorderRadius.horizontal(left: Radius.circular(16)),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: customButton(
                      text: "Free preview",
                      style: styles.titlestyle18,
                      radius:
                          BorderRadius.horizontal(right: Radius.circular(16)),
                      color: Color(0xffef8262),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "you can also like ",
                style:
                    styles.titlestyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
