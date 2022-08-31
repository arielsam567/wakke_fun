import 'package:flutter/material.dart';
import 'package:wakke_fun/models/post_model.dart';
import 'package:wakke_fun/widgets/app_bar.dart';
import 'package:wakke_fun/widgets/post_widget/post_widget.dart';
import 'package:wakke_fun/widgets/title_home.dart';


class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(),
      appBar: AppBarDefault(_scaffoldKey),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
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

            if(index == 0 ){
              return Column(
                children: [
                  const TitleHome(),
                  PostWidget(post: post )
                ],
              );
            }

            return  PostWidget(post: post );
          },

        ),
      ),
    );
  }
}


