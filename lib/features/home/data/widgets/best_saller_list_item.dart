import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bestSallerListItem extends StatelessWidget {
  const bestSallerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image of the book
          AspectRatio(
            aspectRatio: 2 / 3, // Adjust the aspect ratio as needed
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      assetData.items), // Replace with your image URL
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
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
                  child: const Text('Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: styles.titlestyle20),
                ),
                SizedBox(height: 3),

                // Author Name
                Text('J.K. Rowling', style: styles.titlestyle14),

                SizedBox(height: 3),

                // Rating and Review Count
                Row(
                  children: [
                    // Price
                    Text('19.99 €',
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
                    Text('4.8', style: styles.titlestyle16),
                    SizedBox(width: 5),
                    Text('(2300)',
                        style: styles.titlestyle14
                            .copyWith(color: Color(0xff707070))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
