import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ติดต่อ'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'ติดต่อ',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Text(
                    ' เบอร์ติดต่อ :043-797129',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Text(
                    ' ที่อยู่ : พระบรมธาตุนาดูน ต.พระธาตุ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Text(
                    ' อ.นาดูน จ.มหาสารคาม 44180',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'พัฒนาโดย',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' นางสาวกมลธิดา ดวงสีดา101',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' นางสาวทิพย์พรัตน์ อัดไชโย 103',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' นางสาวอภิญญา ภูผาทิพย์ 111',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' นางสาวอริสา คะรุนรัมย์112',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' นายภานุวัฒน์ สุขสวัสดิ์125',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' นางสาวอริสรา ศรวิเศษ 133',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' สาขา เทคโนโลยีสารสนเทศ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' คณะ เทคโนโลยีสารสนเทศ',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                ' มหาวิทยาลัยราชภัฏมหาสารคาม',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
