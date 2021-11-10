import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CafeUI extends StatefulWidget {
  const CafeUI({Key? key}) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<CafeUI> {
  List<FoodList> foodList = [
    FoodList(
      name: ' Shing A ring A ring   ',
      website: '  ทุกวัน 11.00-24.00 น.',
      facebook: ' ชิงน์ อาริง อาริง',
      mobile: ' 095-665-6994',
      image: 'cafe_logo_1.jpg',
      pikat: 'https://goo.gl/maps/cYj6ehuTwEq83Xsk9',
    ),
    FoodList(
      name: ' The Hub Cafe and Eatery',
      website: '  ทุกวัน เวลา 10.00-19.00 น.',
      facebook: ' The Hub Cafe and Eatery',
      mobile: ' 092-789-7181',
      image: 'cafe_logo_2.jpg',
      pikat: 'https://goo.gl/maps/fYQ7RodGpMb14oF38',
    ),
    FoodList(
      name: ' Ahh kard d ',
      website: '  11.30-21.00 น.ปิดวันจันทร์',
      facebook: ' Ahh kard d ',
      mobile: ' 065-587-5595',
      image: 'cafe_logo_3.jpg',
      pikat: 'https://goo.gl/maps/cC8bF96SuTfkAU3y9',
    ),
    FoodList(
      name: ' Hintcoffee',
      website: '  เวลา09.30-11.30 น.',
      facebook: ' Hintcoffee',
      mobile: ' 0809378762',
      image: 'cafe_logo_4.jpg',
      pikat: 'https://goo.gl/maps/56S3BUppfoHVWXPb9',
    ),
    FoodList(
      name: ' OtherCafe',
      website: '  ทุกวัน 08.00-19.00 น.',
      facebook: ' OtherCafe',
      mobile: ' 092-889-5665',
      image: 'cafe_logo_5.jpg',
      pikat: 'https://goo.gl/maps/yaf6BVCHvZkaKk8Q9',
    ),
    FoodList(
      name: ' ร้านเพลินทวี',
      website: '   09.00-17.00 น.',
      facebook: ' ร้านเพลินทวี',
      mobile: ' 096-916-9956',
      image: 'cafe_logo_6.jpg',
      pikat: 'https://g.page/Pearntawee?share',
    ),
    FoodList(
      name: ' Bluetamp Cafe',
      website: '  ทุกวัน 08.00-18.00 น.',
      facebook: ' Bluetamp Cafe',
      mobile: ' 020709282',
      image: 'cafe_logo_7.jpg',
      pikat: 'https://goo.gl/maps/7CtCUDkpDykoQ1cm7',
    ),
    FoodList(
      name: ' Little Hideout',
      website: '  09.00-18.00 น.',
      facebook: ' Little Hideout',
      mobile: ' 081-821-8795',
      image: 'cafe_logo_8.jpg',
      pikat: 'https://goo.gl/maps/KdkRdex9xduUyT2P7',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ร้านกาแฟใกล้ตัวคุณ',
        ),
        backgroundColor: Colors.brown[600],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: <Widget>[],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: foodList.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 50.0,
                  color: Colors.teal,
                );
              },
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    //เปิดไปหน้า ListfoodDetailUI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          // ที่หน้า ListfoodDetailUI มีการสร้างตัวแปรรับค่า
                          // ดั้งนั้นในการเปิดไปหน้า ListfoodDetailUI เราจึงต้องส่งข้อมูลไปด้วย
                          return ListFoodDetailUI(
                            name: foodList[index].name,
                            website: foodList[index].website,
                            facebook: foodList[index].facebook,
                            mobile: foodList[index].mobile,
                            image: foodList[index].image,
                            pikat: foodList[index].pikat,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    foodList[index].name,
                  ),
                  subtitle: Text(
                    foodList[index].name,
                  ),
                  leading: Container(
                    child: Image.asset(
                      'assets/images/' + foodList[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
