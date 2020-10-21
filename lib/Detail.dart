import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('รายละเอียด'),
        // ),
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            children: [
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('ความสามารถ :'),
                  Text('เขียนแอปพลิเคชัน'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: RaisedButton(
                  color: Colors.pink,
                  onPressed: () {},
                  child: Text('ตกลง'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
