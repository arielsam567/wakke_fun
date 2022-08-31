import 'package:flutter/material.dart';
import 'package:wakke_fun/widgets/post_widget/widgets/comment_post_widget.dart';
import 'package:wakke_fun/widgets/post_widget/widgets/rating__post_widget.dart';

class InfoPostWidget extends StatelessWidget {
  final int amountComments;
  final double rating;
  const InfoPostWidget({
    Key? key,
    required this.amountComments,
    required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: CommentWidget(amount: amountComments,),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: RatingWidget(rating: rating,),
        )
      ],
    );
  }
}
