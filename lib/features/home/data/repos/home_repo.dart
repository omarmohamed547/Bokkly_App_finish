import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<failure, List<BookModel>>> fetchnewsetBooks();
  Future<Either<failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
