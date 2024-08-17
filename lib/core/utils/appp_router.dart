import 'package:bookly_app/features/home/data/presntation/view_models/views/home_view.dart';
import 'package:bookly_app/features/home/data/widgets/book_deatails_view.dart';
import 'package:bookly_app/features/splash/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class appRouter {
  static const khomeview = '/homeview';
  static const kbookdetails = '/bookdetails';

  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, state) {
        return splashView();
      },
    ),
    GoRoute(
      path: khomeview,
      builder: (BuildContext context, state) {
        return homeView();
      },
    ),
    GoRoute(
      path: kbookdetails,
      builder: (BuildContext context, state) {
        return bookdetails();
      },
    )
  ]);
}
