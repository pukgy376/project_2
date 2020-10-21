import 'package:flutter/material.dart';
import 'package:project_2/Detail.dart';

class ListvierPage extends StatefulWidget {
  @override
  _ListvierPageState createState() => _ListvierPageState();
}

class _ListvierPageState extends State<ListvierPage> {
  List<String> name = [
    'ประวัติ ',
    'การเดินทาง',
    'จุดเด่น',
    'เวลาทำการ',
    'เวลาปิด'
  ];
  List<String> traval = ['การเดินทาง'];
  List<String> pic = [
    'assets/images/pic1.jpg',
    // 'assets/images/pic2.png',
    // 'assets/images/pic3.png',
    // 'assets/images/pic4.png',
    // 'assets/images/pic5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('จุดเด่น'),
        ),
        body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) {
                int i = index + 1;
                return ListTile(
                  title: Text(name[index]),
                  // subtitle: Text('นักเรียนคนที่ : $i'),
                  // leading: Image.asset(pic[index]),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) => Detail(),
                    );
                    Navigator.push(context, route);
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemCount: name.length,
             
              ),
             
        ),
         
      ),
    );
  }
}
