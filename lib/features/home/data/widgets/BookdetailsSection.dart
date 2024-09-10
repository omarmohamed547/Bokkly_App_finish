import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: listviewimage(
            imageurl:
                "https://media.istockphoto.com/id/1961324209/photo/a-concept-where-various-creative-thoughts-are-formed-within-a-light-bulb-3d-rendering.jpg?s=2048x2048&w=is&k=20&c=h1gT6ViXDG8na2sviuWPYBLc3ecX6dAPq-CP-BmzrDE=",
          ),
        ),
        SizedBox(height: 20),
        Text(
          'The Jungle Book',
          style: styles.titlestyle30.copyWith(fontWeight: FontWeight.bold),
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
            Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 16),
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
                  style: styles.titlestyle18.copyWith(color: Colors.black),
                  radius: BorderRadius.horizontal(left: Radius.circular(16)),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: customButton(
                  text: "Free preview",
                  style: styles.titlestyle18,
                  radius: BorderRadius.horizontal(right: Radius.circular(16)),
                  color: Color(0xffef8262),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
