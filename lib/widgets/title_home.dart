
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun/configs/images_path.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: SvgPicture.asset(
              ImagePath.chat,
              height: 20,
              width: 20,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Text(
            'Está acontecendo...',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}