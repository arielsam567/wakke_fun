import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun/configs/images_path.dart';

class RatingWidget extends StatelessWidget {
  final double rating;
  const RatingWidget({
    Key? key,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          ImagePath.rating,
          height: 13,
          width: 13,
          color: Theme.of(context).colorScheme.secondary,
        ),
        const SizedBox(width: 4,),
        Text(
          rating.toString().padLeft(1, '0'),
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}

