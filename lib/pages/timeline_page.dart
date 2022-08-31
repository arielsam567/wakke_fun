import 'package:flutter/material.dart';
import 'package:wakke_fun/controllers/home_controller.dart';
import 'package:provider/provider.dart';
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
    return ChangeNotifierProvider<HomeController>(
      create: (context) => HomeController(),
      child: Consumer<HomeController>(
          builder: (BuildContext context, HomeController controller, _) {
            return Scaffold(
              key: _scaffoldKey,
              drawer: const Drawer(),
              appBar: AppBarDefault(_scaffoldKey),
              body: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (BuildContext context, int index){


                    if(index == 0 ){
                      return Column(
                        children: [
                          const TitleHome(),
                          PostWidget(post: controller.posts[index] )
                        ],
                      );
                    }

                    return  PostWidget(post: controller.posts[index] );
                  },

                ),
              ),
            );
          }),
    );

  }
}


