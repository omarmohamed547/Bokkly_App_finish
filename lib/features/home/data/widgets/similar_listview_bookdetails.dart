import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class similarlBooklistview extends StatelessWidget {
  const similarlBooklistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: listviewimage(
                imageurl:
                    "https://media.istockphoto.com/id/1961324209/photo/a-concept-where-various-creative-thoughts-are-formed-within-a-light-bulb-3d-rendering.jpg?s=2048x2048&w=is&k=20&c=h1gT6ViXDG8na2sviuWPYBLc3ecX6dAPq-CP-BmzrDE=",
              ),
            );
          }),
    );
  }
}
