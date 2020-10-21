import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('รูปภาพ'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'รูปภาพ',
                  style: TextStyle(fontSize: 40),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/PhraThatNaDoon1.jpg',
                        width: (150), height: (150)),
                    Text(
                      ' ป้ายทางเข้าพระธาตุ',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/PhraThatNaDoon2.jpg',
                        width: (150), height: (150)),
                    Text(
                      ' บ่อน้ำบริเวณพระธาตุ',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Image.asset('assets/images/PhraThatNaDoon4.jpg',
                        width: (150), height: (150)),
                    Text(
                      ' ภาพมุมสูง',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
