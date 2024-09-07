import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class featuredBooksStates extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class featuredBooksIntial extends featuredBooksStates {}

class featuredBooksLoading extends featuredBooksStates {}

class featuredBooksSucess extends featuredBooksStates {
  List<BookModel> books;
  featuredBooksSucess({required this.books});
}

class featuredBooksFailure extends featuredBooksStates {
  String errmessage;
  featuredBooksFailure({required this.errmessage});
}
