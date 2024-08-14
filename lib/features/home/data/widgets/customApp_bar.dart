import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          assetData.logo,
          height: 24,
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 32,
            ))
      ],
    );
  }
}
