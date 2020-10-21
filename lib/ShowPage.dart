import 'package:flutter/material.dart';

class ShowPage extends StatefulWidget {
  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    //รับค่า
    data = ModalRoute.of(context).settings.arguments;
    String name = data['namekey'].toString();
    String pic = data['pickey'].toString();
    //String phone = data['phonekey'].toString();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Show'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('ชื่อ สกุล : $name'),
              Text('อีเมล์ : $pic'),
              //Text('เบอร์โทร : $phone'),
            ],
          ),
        ),
      ),
    );
  }
}
