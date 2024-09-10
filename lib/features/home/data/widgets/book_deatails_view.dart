import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_states.dart';
import 'package:bookly_app/features/home/data/widgets/book_details_viewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bookdetails extends StatefulWidget {
  final BookModel bookModel;

  const bookdetails({super.key, required this.bookModel});
  @override
  State<bookdetails> createState() => _bookdetailsState();
}

class _bookdetailsState extends State<bookdetails> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<featuredsimilarBooksCubit>(context)
        .fetchfeaturedSimilarBooks(
            category: widget.bookModel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bookdetailsBody(),
    );
  }
}
