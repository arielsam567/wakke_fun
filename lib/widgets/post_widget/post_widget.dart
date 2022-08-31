import 'package:flutter/material.dart';
import 'package:wakke_fun/models/post_model.dart';
import 'package:wakke_fun/widgets/post_widget/widgets/header_post_widget.dart';
import 'package:wakke_fun/widgets/post_widget/widgets/image_post_widget.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(2, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPost(post: post),

            PostImageWidget(
              urlImage: post.imagemCapa ?? '',
              title: post.titulo ?? '',),
          ],
        ),
      ),
    );
  }
}


