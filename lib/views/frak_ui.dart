import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FrakUI extends StatefulWidget {
  const FrakUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<FrakUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' ขนมฝรั่งแม่ไน้',
website: '  09.00 - 18.00 น',
facebook: ' ขนมฝรั่งแม่ไน้',
mobile: ' 0813030803',
image: 'f_logo_1.jpg',
pikat: 'https://goo.gl/maps/BvLBcb8jKjuHbMQeA',
),
    FoodList(
name: ' แม่ประไพศรี ข้าวเหนียวมูล',
website: '  04.00 -17.00 น.',
facebook: ' แม่ประไพศรี ข้าวเหนียวมูล',
mobile: ' 025271407',
image: 'f_logo_2.jpg',
pikat: 'https://goo.gl/maps/BvLBcb8jKjuHbMQeA',
),
    FoodList(
name: ' นนท์เบเกอรี่',
website: '  8.00-20.00 น.',
facebook: ' นนท์เบเกอรี่',
mobile: ' 025271752',
image: 'f_logo_3.jpg',
pikat: 'https://goo.gl/maps/Rz9pSLWyQrAbnNpU6',
),
   FoodList(
name: ' กุยช่าย 7 สี',
website: '  7.00-19.00 น.',
facebook: ' กุยช่าย 7 สี',
mobile: ' 089 442 2708',
image: 'f_logo_4.jpg',
pikat: 'https://goo.gl/maps/L2NbmBvzmJjqZrVu7',
),
 
  FoodList(
name: ' ปังปัง 85 องศา',
website: '  8.00-18.00 น.',
facebook: ' ปังปัง 85 องศา',
mobile: ' 0832428550',
image: 'f_logo_5.jpg',
pikat: 'https://goo.gl/maps/A44rtpoNnLEAjQB8A',
),
  FoodList(
name: ' ทอดมันท่าน้ำนนท์',
website: '  12.00-20.00 น.',
facebook: ' ทอดมันท่าน้ำนนท์',
mobile: ' -',
image: 'f_logo_6.jpg',
pikat: 'https://goo.gl/maps/CqiYVnAc7kQxH43Q9',
),
  FoodList(
name: ' บัวลอยเมืองนนท์',
website: '  17.00-24.00 น.',
facebook: ' บัวลอยเมืองนนท์',
mobile: ' 025271752',
image: 'f_logo_7.jpg',
pikat: 'https://goo.gl/maps/wEmZATQZUNnKdYfGA',
),
   
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ร้านขายของฝากใกล้ตัวคุณ',
        ),
        backgroundColor: Colors.pink[300],
        elevation: 0,
        leading: IconButton(
          onPressed: (){
             Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: <Widget>[
          
        
        
        ],
        


      ),
      body: Column(
        children: [
          
          
          Expanded(
            child: ListView.separated(
              itemCount: foodList.length,
              separatorBuilder: (context, index){
                return Divider(
                  height: 50.0,
                  color: Colors.teal,
                );
              },
              itemBuilder: (context, index){
                return ListTile(
                  onTap: (){
                    //เปิดไปหน้า ListfoodDetailUI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
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