import 'package:bookly_app/core/utils/appp_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class bestSallerListItem extends StatelessWidget {
  final BookModel bookModel;
  const bestSallerListItem({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(appRouter.kbookdetails);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image of the book
            custombookimage(
                imageurl: bookModel.volumeInfo.imageLinks.thumbnail),
            SizedBox(width: 30),

            // Column with book details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Book Title
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: styles.titlestyle20),
                  ),
                  SizedBox(height: 3),

                  // Author Name
                  Text(bookModel.volumeInfo.authors![0],
                      style: styles.titlestyle14),

                  SizedBox(height: 3),

                  // Rating and Review Count
                  Row(
                    children: [
                      // Price
                      Text('Free',
                          style: styles.titlestyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 16.0,
                      ),
                      SizedBox(width: 6.3),
                      Text(bookModel.volumeInfo.maturityRating!,
                          style: styles.titlestyle16),
                      SizedBox(width: 5),
                      Text('(${bookModel.volumeInfo.pageCount!.toString()})',
                          style: styles.titlestyle14
                              .copyWith(color: Color(0xff707070))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
