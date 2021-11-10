import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class WatUI extends StatefulWidget {
  const WatUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<WatUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' วัดพุทธจักรมงคลชยาราม',
website: '  -',
facebook: ' วัดพุทธจักรมงคลชยาราม',
mobile: ' 0865795841',
image: 'wat_logo_1.jpg',
pikat: 'https://goo.gl/maps/pRb8h1bZJaPugLVt8',
),
    FoodList(
name: ' วัดคงคา',
website: '  -',
facebook: ' วัดคงคา',
mobile: ' 029248705',
image: 'wat_logo_2.jpg',
pikat: 'https://goo.gl/maps/1v1Xaa51XrE3JTvu6',
),
    FoodList(
name: ' วัดหทัยนเรศวร์',
website: '  -',
facebook: ' วัดหทัยนเรศวร์',
mobile: ' 0816106673',
image: 'wat_logo_3.jpg',
pikat: 'https://goo.gl/maps/cnKL71sN5ADhdcg96',
),
   FoodList(
name: '  วัดบรมราชากาญจนาภิเษกอนุสรณ์',
website: '  06.00-18.00 น.',
facebook: '  วัดบรมราชากาญจนาภิเษกอนุสรณ์',
mobile: ' 0-2571-1155',
image: 'wat_logo_5.jpg',
pikat: 'https://www.facebook.com/Wat.Boromracha.Temple',
),
   FoodList(
name: '  วัดสังฆทาน',
website: '  08.00-18.00 น.',
facebook: '  วัดสังฆทาน',
mobile: ' 0-2496-1240',
image: 'wat_logo_5.1.jpg',
pikat: 'https://goo.gl/maps/oP1HFZexJRZGTcPh6',
),
   FoodList(
name: '  วัดบางจาก ',
website: '  08.00-17.00 น.',
facebook: '  -',
mobile: ' -',
image: 'wat_logo_6.jpg',
pikat: 'https://goo.gl/maps/DB1KtD1DcxmT6TWJA',
),
   FoodList(
name: '  วัดบางไผ่ บางบัวทอง',
website: '  08.00-16.30 น.',
facebook: '  วัดบางไผ่ บางบัวทอง',
mobile: ' 0816106673',
image: 'wat_logo_7.jpg',
pikat: 'https://goo.gl/maps/GHnE5tiV3hyerK7b7',
),
   FoodList(
name: '  วัดกู้ พระนางเรือล่ม',
website: '  08.00-17.00 น น.',
facebook: '  วัดกู้-พระนางเรือล่ม',
mobile: ' 08-6533-9171',
image: 'wat_logo_8.1.jpg',
pikat: 'https://goo.gl/maps/urPCMh4jjNUZGBSF7',
),









   
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'วัฒนธรรมที่ใกล้ตัวคุณ',
        ),
        backgroundColor: Colors.yellow[700],
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