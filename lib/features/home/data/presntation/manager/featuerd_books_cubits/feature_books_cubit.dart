import 'dart:ffi';

import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/featuerd_books_state.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuredBooksCubit extends Cubit<featuredBooksStates> {
  featuredBooksCubit(this.homeRepo) : super(featuredBooksIntial());
  final HomeRepo homeRepo;

  Future<void> fetchfeaturedBooks() async {
    emit(featuredBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(featuredBooksFailure(errmessage: failure.errormessage));
    }, (books) {
      emit(featuredBooksSucess(books: books));
    });
  }
}
