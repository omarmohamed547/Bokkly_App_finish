import 'package:bookly_app/features/home/data/widgets/best_saller_list_item.dart';
import 'package:flutter/material.dart';

class searchlistviewVertical extends StatelessWidget {
  const searchlistviewVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Text("data");
          }),
    );
  }
}
