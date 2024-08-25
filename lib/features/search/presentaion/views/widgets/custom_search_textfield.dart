import 'package:flutter/material.dart';

class customSearchTextField extends StatelessWidget {
  const customSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
            hintText: "Search",
            suffixIcon: Opacity(
              opacity: 0.8,
              child: Icon(
                Icons.search,
                size: 32,
              ),
            )),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white));
  }
}
