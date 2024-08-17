import 'package:bookly_app/core/utils/assets.dart';
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
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '19.99€',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text('Free preview'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildBookRecommendation('https://example.com/book1.jpg'),
                  _buildBookRecommendation('https://example.com/book2.jpg'),
                  _buildBookRecommendation('https://example.com/book3.jpg'),
                  _buildBookRecommendation('https://example.com/book4.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookRecommendation(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
