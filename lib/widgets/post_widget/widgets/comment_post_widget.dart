import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun/configs/images_path.dart';

class CommentWidget extends StatelessWidget {
  final int amount;
  const CommentWidget({
    Key? key,
    required this.amount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          ImagePath.comment,
          height: 13,
          width: 13,
          color: Theme.of(context).colorScheme.secondary,
        ),
        const SizedBox(width: 4,),
        Text(
          '$amount',
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}

