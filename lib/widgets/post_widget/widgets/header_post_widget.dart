import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wakke_fun/models/post_model.dart';
import 'package:wakke_fun/widgets/post_widget/widgets/info_post_widget.dart';

class HeaderPost extends StatelessWidget {
  final Post post;
  const HeaderPost({
    required this.post,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: CachedNetworkImage(
              imageUrl: post.usuarioAutorIcone?.url ?? '',
              height: 30,
              width: 30,
              placeholder: (context, value){
                return SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              errorWidget: (context, url, error){
                return  Container(
                  width: 30.0,
                  color: Colors.grey[300],
                  height: 30.0,
                  child: const Icon(
                    Icons.error_outline,
                    size: 16,
                    color: Colors.black,

                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 193,
              child: Text(
                post.usuarioAutorNome ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),

          InfoPostWidget(
            rating: post.mediaNota!,
            amountComments: post.comentariosQtd!,

          )

        ],
      ),
    );
  }
}


