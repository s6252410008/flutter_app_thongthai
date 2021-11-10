import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class TavelUI extends StatefulWidget {
  const TavelUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<TavelUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' ไร่เหมืองจันทร์',
website: '  09.00 น.-21.00 น.',
facebook: ' ไร่เหมืองจันทร์',
mobile: ' 0811686565',
image: 'tavel_logo_1.jpg',
pikat: 'https://goo.gl/maps/UALx6Vjfckt98xKE6',
),
    FoodList(
name: ' นาบัวลุงแจ่ม',
website: '  08.00 น.-17.00 น.',
facebook: ' นาบัวลุงแจ่ม & Jam Cafe',
mobile: ' 0878281892',
image: 'tavel_logo_2.jpg',
pikat: 'https://goo.gl/maps/jyH26VaJjNqsBpCh9',
),
    FoodList(
name: ' สวนคุณลุงบุญเลิศ',
website: '  08.00 น.-17.00 น.',
facebook: ' สวนคุณลุงบุญเลิศ',
mobile: ' 0890571432',
image: 'tavel_logo_3.jpg',
pikat: 'https://goo.gl/maps/hispCkcqSbmQzjka6',
),
    FoodList(
name: ' ท่าน้ำนนท์',
website: '  เปิดให้ชมตลอด',
facebook: ' ท่าน้ำนนท์',
mobile: ' 0931124222',
image: 'tavel_logo_4.2.jpg',
pikat: 'https://goo.gl/maps/bqey98fBcCFTsahb7',
),
   FoodList(
name: ' พิพิธภัณฑ์จังหวัดนนทบุรี',
website: '  10.00-18.00 น.',
facebook: ' -',
mobile: ' -',
image: 'tavel_logo_5.jpg',
pikat: 'https://goo.gl/maps/uRKja1gaLPhGmzJg9',
),
  FoodList(
name: ' เกาะเกร็ด',
website: '  09.00-17.30 น',
facebook: '  Tourkohkret',
mobile: ' 0972976740',
image: 'tavel_logo_6.jpg',
pikat: 'https://goo.gl/maps/vWVEmR2RWH7Pi3Pt7',
),
  FoodList(
name: ' ตลาดน้ำวัดตะเคียน',
website: '  08.00-17.00 น.',
facebook: '  -',
mobile: ' -',
image: 'tavel_logo_7.jpg',
pikat: 'https://goo.gl/maps/P62Hn23CTYUERyAD8',
),
 FoodList(
name: ' สวนมาลัย บัววิคตอเรีย',
website: '  09.00-17.00 น',
facebook: '  -',
mobile: ' 0890572289',
image: 'tavel_logo_8.jpg',
pikat: 'https://goo.gl/maps/twv5zYMFfnZm4qUTA',
),






]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'สถานที่ท่องเที่ยวใกล้ตัวคุณ',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[700],
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