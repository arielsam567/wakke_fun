import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wakke_fun/configs/images_path.dart';

import 'timeline_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final PageController _myPage = PageController(initialPage: 0);
  bool clickedCentreFAB = false;
  int selectedIndex = 0;

  void updateTabSelection(int index) {
    setState(() {
      clickedCentreFAB = false;
      selectedIndex = index;
      _myPage.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _myPage,
            onPageChanged: (int value) {
              setState(() {
                selectedIndex = value;
              });
            },
            children: [
              const TimelinePage(),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              )
            ],
          ),

          Align(
            alignment: FractionalOffset.bottomCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height:
              clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              width: clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(clickedCentreFAB ? 0.0 : 300.0),
                  color: Colors.blue),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickedCentreFAB = !clickedCentreFAB;
          });
        },
        elevation: 4.0,
        child: Container(
          height: 120.0,
          width: 120.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  ImagePath.button
              ),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  updateTabSelection(0);
                },
                icon: SvgPicture.asset(
                  ImagePath.appBarMenu,
                  height: 18,
                  color: selectedIndex == 0
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade400,
                ),
              ),

              IconButton(
                splashRadius: 20,

                onPressed: () {
                  updateTabSelection(1);
                },
                icon: Image.asset(
                  ImagePath.add,
                  height: 22,
                  color: selectedIndex == 1
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade400,
                ),
              ),

              const SizedBox(
                width: 50.0,
              ),

              IconButton(
                splashRadius: 20,
                onPressed: () {
                  updateTabSelection(2);
                },
                icon: Image.asset(
                  ImagePath.account,
                  height: 22,
                  color: selectedIndex == 2
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade400,
                ),
              ),

              IconButton(
                splashRadius: 20,
                onPressed: () {
                  updateTabSelection(3);
                },
                icon: Image.asset(
                  ImagePath.notification,
                  height: 20,
                  color: selectedIndex == 3
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}