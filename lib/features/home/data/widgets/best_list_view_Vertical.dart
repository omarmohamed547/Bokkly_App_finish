import 'package:bookly_app/core/utils/widgets/CustomError_widget.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/presntation/manager/featured_newest_books_cubits/featured_newest_books_states.dart';
import 'package:bookly_app/features/home/data/widgets/best_saller_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bestlistviewVertical extends StatelessWidget {
  const bestlistviewVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<featurednewestBooksCubit, featuredNewestBooksStates>(
      builder: (BuildContext context, state) {
        if (state is featuredNewestBooksSucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: bestSallerListItem(
                      bookModel: state.books[index],
                    ),
                  );
                }),
          );
        } else if (state is featuredNewestBooksFailure) {
          return CustomError(errmessage: state.errmessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
