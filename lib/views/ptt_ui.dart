import 'package:flutter/material.dart';

import 'package:flutter_app_thongthai/models/list.dart';
import 'package:flutter_app_thongthai/views/detail_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class PttUI extends StatefulWidget {
  const PttUI({ Key? key }) : super(key: key);

  @override
  _ListFoodNewUIState createState() => _ListFoodNewUIState();
}

class _ListFoodNewUIState extends State<PttUI> {
  List<FoodList> foodList = [
    
    
    FoodList(
name: ' ปั๊ม PTT',
website: '  เปิด 24 ชั่วโมง',
facebook: ' -',
mobile: ' -',
image: 'p_1.png',
pikat: 'https://goo.gl/maps/Fb69aUSnofmRZAAK8',
),
    FoodList(
name: 'ปั๊ม PT สาขาทวีวัฒนา',
website: '  24 ชั่วโมง',
facebook: ' -',
mobile: ' -',
image: 'p_2.png',
pikat: 'https://goo.gl/maps/b2EZyYAemoVzcSzu5',
),
    FoodList(
name: ' ปั๊ม esso',
website: '  24 ชั่วโมง',
facebook: ' -',
mobile: ' -',
image: 'p_3.png',
pikat: 'https://goo.gl/maps/qPWMmJwFF1BXSbtx8',
),
     FoodList(
name: 'ปั้มคาลเท็กซ์ ',
website: '  24 ชั่วโมง',
facebook: ' -',
mobile: ' -',
image: 'p_4.png',
pikat: 'https://goo.gl/maps/KVDszWGpzrtiQKxk8',
),
   FoodList(
name: ' ปั๊มน้ำมันบางจาก',
website: '  เปิด 24 ชั่วโมง',
facebook: ' -',
mobile: ' -',
image: 'p_5.png',
pikat: 'https://goo.gl/maps/MKANrZV4NQPkBRK79',
),



]; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'จุดพักรถใกล้ตัวคุณ',
        ),
        backgroundColor: Colors.blue[400],
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