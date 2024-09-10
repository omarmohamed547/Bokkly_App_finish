import 'package:bookly_app/core/utils/custom_button.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel bookModel;

  const BookDetailsSection({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: listviewimage(
            imageurl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        SizedBox(height: 20),
        Text(
          bookModel.volumeInfo.title!,
          style: styles.titlestyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
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
              bookModel.volumeInfo.maturityRating!,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(width: 4),
            Text(
              '(${bookModel.volumeInfo.pageCount!.toString()})',
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
                  text: "Free",
                  style: styles.titlestyle18.copyWith(color: Colors.black),
                  radius: BorderRadius.horizontal(left: Radius.circular(16)),
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: customButton(
                  text: "preview",
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
