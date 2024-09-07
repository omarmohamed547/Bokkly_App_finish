import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class featuredNewestBooksStates extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class featuredNewestBooksIntial extends featuredNewestBooksStates {}

class featuredNewestBooksLoading extends featuredNewestBooksStates {}

class featuredNewestBooksSucess extends featuredNewestBooksStates {
  List<BookModel> books;
  featuredNewestBooksSucess({required this.books});
}

class featuredNewestBooksFailure extends featuredNewestBooksStates {
  String errmessage;
  featuredNewestBooksFailure({required this.errmessage});
}
