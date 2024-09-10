import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class featuredSimilarBookStates extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class featuredSimilarBooksIntial extends featuredSimilarBookStates {}

class featuredSimilarBooksLoading extends featuredSimilarBookStates {}

class featuredSimilarBooksSucess extends featuredSimilarBookStates {
  List<BookModel> books;
  featuredSimilarBooksSucess({required this.books});
}

class featuredSimilarBooksFailure extends featuredSimilarBookStates {
  String errmessage;
  featuredSimilarBooksFailure({required this.errmessage});
}
