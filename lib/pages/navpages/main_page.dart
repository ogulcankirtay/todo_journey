import 'package:flutter/material.dart';
import 'package:to_do_journey/pages/navpages/bar_item_page.dart';
import 'package:to_do_journey/pages/home_page.dart';
import 'package:to_do_journey/pages/navpages/my_page.dart';
import 'package:to_do_journey/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"",icon: Icon(Icons.person)),


        ],
      ),
    );
  }
}
