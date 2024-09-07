import 'dart:ffi';

import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/featuerd_books_state.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_states.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featurednewestBooksCubit extends Cubit<featuredNewestBooksStates> {
  featurednewestBooksCubit(this.homeRepo) : super(featuredNewestBooksIntial());
  final HomeRepo homeRepo;

  Future<void> fetchfeaturedBooks() async {
    emit(featuredNewestBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(featuredNewestBooksFailure(errmessage: failure.errormessage));
    }, (books) {
      emit(featuredNewestBooksSucess(books: books));
    });
  }
}
