import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ประวัติพระธาตุนาดูน'),
          //backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'พระธาตุนาดูน',
                style: TextStyle(fontSize: 40),
              ),
              Image.asset('assets/images/PhraThatNaDoon.jpg',
                  width: (230), height: (180)),
              Row(
                children: <Widget>[
                  Text(
                    'อำเภอนาดูนเป็นแหล่งอารยธรรมโบราณแห่งหนึ่ง',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'ที่มีประวัติอันยาวนาน โดยบริเวณที่ตั้งของอำเภอ',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'นาดูนคือ เมืองจัมปาศรีที่เจริญรุ่งเรือนใน',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'สมัยทวารวดี เมื่อประมาณพุทธศตวรรษที่ 13-15',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'ซึ่งมีหลักฐานทางประวัติศาสตร์และโบราณคดี',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'ที่ค้นพบมากมาย',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: RaisedButton(
                  color: Colors.pink,
                  onPressed: () {},
                  child: Text('ยินดีต้อนรับ',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
