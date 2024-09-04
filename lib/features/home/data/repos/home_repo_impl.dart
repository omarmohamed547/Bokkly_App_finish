import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplem implements HomeRepo {
  apiService apiservice;
  HomeRepoImplem(this.apiservice);
  @override
  Future<Either<failure, List<BookModel>>> fetchnewsetBooks() async {
    try {
      var data = await apiservice.get(
          endpoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(serverfailure());
    }
  }

  @override
  Future<Either<failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
