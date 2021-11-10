import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/views/cafe_ui.dart';
import 'package:flutter_app_thongthai/views/frak_ui.dart';
import 'package:flutter_app_thongthai/views/ptt_ui.dart';
import 'package:flutter_app_thongthai/views/r_ui.dart';
import 'package:flutter_app_thongthai/views/tavel_ui.dart';
import 'package:flutter_app_thongthai/views/wat_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Text('ท่องเที่ยวใกล้ตัวคุณ'),
        centerTitle: true,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'ห',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'ม',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'ว',
                    style: TextStyle(
                      color: Colors.yellow[600],
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'ด',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'ห',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'มู่',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '...',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              'assets/images/tavel_logo.jpg',
              width: 350.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TavelUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.plane,
                ),
                label: Text('ท่องเที่ยวคลิก'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
              ),
              child: Image.asset(
                'assets/images/r_logo.jpg',
                width: 350.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => rUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.utensils,
                ),
                label: Text('ร้านอาหารคลิก'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400],
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Image.asset(
              'assets/images/wat_logo1.jpg',
              width: 350.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WatUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.synagogue,
                ),
                label: Text('   เที่ยววัด'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[700],
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Image.asset(
              'assets/images/cafe_logo1.jpg',
              width: 350.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CafeUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.coffee,
                ),
                label: Text('ร้านกาแฟคลิก'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown[700],
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Image.asset(
              'assets/images/frak_logo.jpg',
              width: 350.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FrakUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.boxOpen,
                ),
                label: Text('ซื้อของฝากคลิก'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink[300],
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Image.asset(
              'assets/images/ptt_logo.jpg',
              width: 350.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PttUI(),
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.carAlt,
                ),
                label: Text('จุดพักรถคลิก'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[400],
                  fixedSize: Size(
                    130.0,
                    50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
