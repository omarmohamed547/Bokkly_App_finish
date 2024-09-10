import 'dart:ffi';

import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/featuerd_books_state.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_states.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_states.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuredsimilarBooksCubit extends Cubit<featuredSimilarBookStates> {
  featuredsimilarBooksCubit(this.homeRepo)
      : super(featuredSimilarBooksIntial());
  final HomeRepo homeRepo;

  Future<void> fetchfeaturedSimilarBooks({required String category}) async {
    emit(featuredSimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold((failure) {
      emit(featuredSimilarBooksFailure(errmessage: failure.errormessage));
    }, (books) {
      emit(featuredSimilarBooksSucess(books: books));
    });
  }
}
