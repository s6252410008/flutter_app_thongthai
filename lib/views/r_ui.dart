import 'package:flutter/material.dart';
import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class rUI extends StatefulWidget {
  const rUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<rUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' ครัวโอซี',
website: '  11.00 น.-19.30 น.',
facebook: ' ครัวโอซีOrigina',
mobile: ' 0946663565',
image: 'r_logo_1.jpg',
pikat: 'https://goo.gl/maps/N614aim4N8Woh53y7',
),
    FoodList(
name: ' ร้านจีโน่สเต็ก',
website: '  14.00 น.-21.00 น.',
facebook: ' ร้านจีโน่สเต็ก',
mobile: ' 0621634699',
image: 'r_logo_2.jpg',
pikat: 'hhttps://goo.gl/maps/oXWtiNHoJ7TqRZbV8',
),
    FoodList(
name: ' บ้านสวนริมคลอง',
website: '  19.00 น.',
facebook: ' บ้านสวนริมคลอง',
mobile: ' 0612543322',
image: 'r_logo_3.jpg',
pikat: 'https://goo.gl/maps/56S3BUppfoHVWXPb9',
),
   FoodList(
name: ' COAL Bistro',
website: '  11.00 น.-22.00 น.',
facebook: ' COAL Bistro',
mobile: ' 0624455625',
image: 'r_logo_4.jpg',
pikat: 'https://g.page/coal-bkk?share',
),
 FoodList(
name: ' ร้านบ้านครัวส้มตำ',
website: '  9.00 น.-21.30 น.',
facebook: ' ร้านบ้านครัวส้มตำ',
mobile: ' 0636425317',
image: 'r_logo_5.jpg',
pikat: 'https://goo.gl/maps/EMQka3KHNZhT3HYn6',
),
FoodList(
name: ' ร้านอาหารเฮียช้าง ไทย จีน อีสาน',
website: '  11.00 น.-23.00 น.',
facebook: ' ร้านอาหารเฮียช้าง ไทย จีน อีสาน',
mobile: ' 0932229005',
image: 'r_logo_6.jpg',
pikat: 'https://goo.gl/maps/3yXJkQA2gdyu9DAd8',
),
FoodList(
name: ' ร้านบ้านปาย',
website: '  11.00 น.-21.00 น.',
facebook: ' ร้านบ้านปาย',
mobile: ' 0843888434',
image: 'r_logo_7.jpg',
pikat: 'https://g.page/baanpai?share',
),
  FoodList(
name: ' ร้าน52 food & coffee',
website: '  10.00 น.-20.00 น.',
facebook: ' ร้าน52 food & coffee',
mobile: ' 0843888434',
image: 'r_logo_8.jpg',
pikat: 'https://goo.gl/maps/Wyr1whCRTd2oFcwZ8',
), 
   
]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ร้านอาหารใกล้ตัวคุณ',
        ),
        backgroundColor: Colors.green,
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