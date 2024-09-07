import 'package:bookly_app/core/utils/widgets/CustomError_widget.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/featuerd_books_state.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featuerd_books_cubits/feature_books_cubit.dart';
import 'package:bookly_app/features/home/data/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuredlistview extends StatelessWidget {
  const featuredlistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<featuredBooksCubit, featuredBooksStates>(
      builder: (BuildContext context, state) {
        if (state is featuredBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: listviewimage(
                      imageurl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is featuredBooksFailure) {
          return CustomError(errmessage: state.errmessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
