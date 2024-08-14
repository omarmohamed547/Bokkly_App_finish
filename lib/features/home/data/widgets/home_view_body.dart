import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/data/widgets/customApp_bar.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homeviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 24, left: 24, top: 60, bottom: 25),
          child: CustomAppBar(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: listviewitem(),
                );
              }),
        ),
      ],
    );
  }
}
