import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_states.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/views/home_view.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/widgets/book_deatails_view.dart';
import 'package:bookly_app/features/search/presentaion/views/search_view.dart';
import 'package:bookly_app/features/splash/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class appRouter {
  static const khomeview = '/homeview';
  static const kbookdetails = '/bookdetails';
  static const ksearch = '/searchview';

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
        return BlocProvider(
          create: (context) => featuredsimilarBooksCubit(getIt.get<HomeRepo>()),
          child: bookdetails(
            bookModel: state.extra as BookModel,
          ),
        );
      },
    ),
    GoRoute(
      path: ksearch,
      builder: (BuildContext context, state) {
        return searchview();
      },
    ),
  ]);
}
