import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory/custom_widgets/top_menu.dart';

import 'dashboard.dart';

class Browser extends StatefulWidget {
  @override
  _BrowserState createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {

  bool visible = true;

  @override

  void initState() {
    visible  = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(null, 100),
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:10.0, left: 10.0),
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*2/3+10, top: 10.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      if(visible == true){
                        visible  = false;
                      }
                      else {
                        visible =  true;
                      }
                    });
                  },
                  child: SvgPicture.asset('assets/icons/window.svg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10.0),
                child: ClipOval(
                  child: Container(
                    child: Image.asset('assets/images/avatar.png',
                      width: 30, height: 30, fit: BoxFit.cover)
                  )
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width:0.5, color: Color.fromRGBO(159, 159, 159, 1)),
          ),
        ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-141,
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 5.0),
                      color: Color.fromRGBO(60, 59, 59, 1),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Mã hàng',
                              style: TextStyle(color:Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'ĐVT',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Ghi chú',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Container(
                      // constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*4/5),
                      child: new ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        itemBuilder: purchaseRequestItem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TopMenu(visible: visible,),
        ],
      ),
      
      bottomNavigationBar: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        color:Color.fromRGBO(37, 92, 133, 1),
        child: Row(
          children: <Widget>[
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                child: 
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Dashboard()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/unselected_dashboard.svg'),
                        SizedBox(
                          height:5.0,
                        ),
                        Text("Danh sách", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top:7.0),
                child: GestureDetector(
                  onTap: (){
                  },
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/selected_bill.svg'),
                      SizedBox(
                        height:5.0,
                      ),
                      Text("Phiếu", style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1))),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/tick_white.svg'),
                    Text(
                      'Duyệt',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:11.0),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/cross_white.svg'),
                    Text(
                      'Không duyệt',
                      style: TextStyle(color: Colors.white, fontSize: 12.5 ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/back.svg'),
                    Text(
                      'Bỏ qua',
                      style: TextStyle(color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget purchaseRequestItem(BuildContext context, int index){
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              color: Color.fromRGBO(245, 130, 32, 1),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'N.BANH.021',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: true,
                      onChanged: (bool value) {
                        setState(() {
                            // monVal = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'SL Tồn thực tế',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 104, 85, 1),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Text(
                      '23',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(37, 92, 133, 1)),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Cái',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'kem nhiều',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'SL Đặt',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 104, 85, 1),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Text(
                      '12',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(37, 92, 133, 1)),
                    ),
                  ),

                  SizedBox(
                    width: 3.0,
                  ),
                  
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'SL Đặt',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 104, 85, 1),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0),
                      height: 28.0,
                      color: Color.fromRGBO(254, 193, 86, 1),
                      child: Text(
                        '12',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 3.0,
                  ),
                  
                  Expanded(
                    flex:3,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}