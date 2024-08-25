import 'package:bookly_app/features/search/presentaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class searchview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: searchviewbody()),
    );
  }
}
