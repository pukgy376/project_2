import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  //ประกาศตัวแปรรับค่าform
  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mini Project')),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.lightGreen, Colors.lightGreen[200]],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            children: [
              // กำหนดระยะห่างขอบ
              Padding(
                padding: EdgeInsets.all(30),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_add,
                        size: 100,
                        color: Colors.pink,
                      ),
                      _textRegis(),
                      _textfName(),
                      SizedBox(height: 15),
                      _textfEmail(),
                      SizedBox(height: 15),
                      _textfPhone(),
                      SizedBox(height: 25),
                      _btnRegis(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } //build

  // สร้าง function
  Widget _textRegis() {
    return Text(
      'ลงทะเบียน',
      style: TextStyle(fontSize: 30),
    );
  }

  // สร้าง function ช่อง name
  Widget _textfName() {
    return TextFormField(
      controller: name,
      decoration: InputDecoration(
        labelText: 'ชื่อ-สกุล',
        labelStyle: TextStyle(fontSize: 16, color: Colors.white),
        hintText: 'กรอกชื่อ-สกุล',
        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      validator: (value) {
        // เช็คว่าช่องมีข้อมูลไหม?
        if (value.isEmpty) {
          return 'กรุณากรอกชื่อ-สกุล';
        }
      },
    );
  }

  // สร้าง function ช่อง email
  Widget _textfEmail() {
    return TextFormField(
      controller: email,
      decoration: InputDecoration(
        labelText: 'อีเมล์',
        labelStyle: TextStyle(fontSize: 16, color: Colors.white),
        hintText: 'กรอกอีเมล์',
        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      validator: (value) {
        // เช็คว่าช่องมีข้อมูลไหม?
        if (value.isEmpty) {
          return 'กรุณากรอกอีเมล์';
        }
      },
    );
  }

  // สร้าง function ช่อง phone
  Widget _textfPhone() {
    return TextFormField(
      controller: phone,
      decoration: InputDecoration(
        labelText: 'เบอร์โทร',
        labelStyle: TextStyle(fontSize: 16, color: Colors.white),
        hintText: 'กรอกเบอร์โทร',
        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      validator: (value) {
        // เช็คว่าช่องมีข้อมูลไหม?
        if (value.isEmpty) {
          return 'กรุณากรอกเบอร์โทร';
        }
      },
    );
  }

  // สร้าง func ปุ่ม
  Widget _btnRegis() {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: RaisedButton(
        onPressed: () {
          if (_formkey.currentState.validate()) {}
          //_showDialog(name.text);
          //เปิดหน้าใหม่พร้อมส่งค่า
          Navigator.pushNamed(context, '/two', arguments: {
            'namekey': name.text.trim(),
            'emailkey': email.text.trim(),
            'phonekey': phone.text.trim(),
          });
        },
        child: Text(
          'ลงทะเบียน',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.pink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  _showDialog(String name) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('message :'),
              content: Text(name),
            ));
  }
} //class
