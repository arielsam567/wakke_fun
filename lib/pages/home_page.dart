import 'package:flutter/material.dart';
import 'package:wakke_fun/models/post_model.dart';
import 'package:wakke_fun/widgets/app_bar.dart';
import 'package:wakke_fun/widgets/post_widget/post_widget.dart';
import 'package:wakke_fun/widgets/title_home.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppBarDefault(),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const TitleHome(),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
                PostModel post = PostModel(
                  title: '$index title',
                  postImage: 'https://picsum.photos/250?image=$index',
                  userImage: 'https://picsum.photos/250?image=${index+3}',
                  userName: 'Ariel Santos',
                  comments: 12,
                  stars: 10,
                );
                return  PostWidget(post: post );
              },

            ),

            const SizedBox(height: 12,)
          ],
        ),
      ),
    );
  }
}


