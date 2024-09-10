import 'package:bookly_app/core/utils/appp_router.dart';
import 'package:bookly_app/core/utils/widgets/CustomError_widget.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_similar_books_cubits/featured_similar_books_states.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class similarlBooklistview extends StatelessWidget {
  const similarlBooklistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<featuredsimilarBooksCubit, featuredSimilarBookStates>(
      builder: (context, state) {
        if (state is featuredSimilarBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(appRouter.kbookdetails,
                            extra: state.books[index]);
                      },
                      child: listviewimage(
                        imageurl:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is featuredSimilarBooksFailure) {
          return CustomError(errmessage: state.errmessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
