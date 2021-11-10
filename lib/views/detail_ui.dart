import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListFoodDetailUI extends StatefulWidget {
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String pikat = '';

  ListFoodDetailUI(  {
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.pikat,
  }) : super(key: key);

  @override
  _ListFoodDetailUIState createState() => _ListFoodDetailUIState();
}

class _ListFoodDetailUIState extends State<ListFoodDetailUI> {
  // methodเปิดเว็ป
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  //method โทร
   Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'รายละเอียด',
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[700],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 200.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80.0,
                //height: 100.0,
                child: Card(
                  color: Colors.brown[100],
                  elevation: 10.0,
                  shadowColor: Colors.yellow[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                            ),
                            Text(
                              '  ชื่อ : ' + widget.name,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                            ),
                            Text(
                              '  เปิดให้ใช้บริการ : ' + widget.website,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.calendarCheck,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                            ),
                            Text(
                              '   Facebook : ' + widget.facebook,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobile,
                            ),
                            Text(
                              '  โทร : ' + widget.mobile,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // กดปุ่มนี้จะเปิดเว็ป
                      setState(() {
                        _launchInBrowser(widget.website);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.globeAsia,
                    ),
                    label: Text('เปิดเว็ป'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _makePhoneCall('tel:' + widget.mobile);
                      });
                    },
                    icon: Icon(
                      Icons.call,
                    ),
                    label: Text('โทรเลย'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _launchInBrowser(widget.pikat);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.mapMarkedAlt,
                    ),
                    label: Text('พิกัด'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
