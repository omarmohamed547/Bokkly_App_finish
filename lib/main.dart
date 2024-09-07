import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/appp_router.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/feature_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/splash/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/featuerd_books_state.dart';

void main() {
  setupServiceLocator();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => featuredBooksCubit(
            getIt.get<HomeRepo>(),
          )..fetchfeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => featurednewestBooksCubit(
            getIt.get<HomeRepo>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
        ),
      ),
    );
  }
}
