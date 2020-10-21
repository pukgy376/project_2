import 'package:flutter/material.dart';
import 'package:project_2/Contact.dart';
import 'package:project_2/HomePage.dart';
import 'package:project_2/Image.dart';
import 'package:project_2/ListvierPage.dart';


// class ที่สร้างขึ้น
class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int bottomSelectedIndex = 0;

  // รายการเมนู
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text('หน้าหลัก'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.book),
        title: new Text('จุดเด่น'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.image),
        title: Text('รูปภาพ'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.contacts),
        title: Text('ติดต่อ'),
      )
    ];
  }

  // กำหนดให้แสดงเมนูที่ 1 เมื่อเปิดขึ้นมา
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  // เรียกใช้ page ตามรายการเมนู
  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        // เรียกใช้ 4 page ตามจำนวนเมนู
        HomePage(),
        ListvierPage(),
        Images(),
        Contact(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  // function เมื่อกดปุ่มให้เปลี่ยน page
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  // function Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My App'),),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
} // class
