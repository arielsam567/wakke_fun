import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostImageWidget extends StatelessWidget {
  final String urlImage;
  final String title;

  const PostImageWidget({
    Key? key,
    required this.title,
    required this.urlImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: CachedNetworkImage(
              imageUrl: urlImage,
              width: width,
              fit: BoxFit.cover,
              placeholder: (context, value){
                return SizedBox(
                  width: width,
                  height: width,
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
                  width: width,
                  color: Colors.grey[300],
                  height: width,
                  child: const Icon(
                    Icons.error_outline,
                    size: 16,
                    color: Colors.black,

                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: width*(0.133333),
          child: Container(
            height: 80,
            width: width*0.66666,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.all(
                  Radius.circular(12),
              )
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),

          ),
        )
      ],
    );
  }
}
