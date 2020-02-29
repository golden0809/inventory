import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory/custom_widgets/filter_dialog.dart';
import 'package:inventory/custom_widgets/top_menu.dart';

import 'general_information.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var list = [{'title':'QUAN LY LE QUY DON'}, {'title': 'QUAN LY LE LAI'}, {'title': 'QUAN LY NAM KY KHOI NGHIA'}, {'title': 'QUAN LY DONG KHOI'}, {'title':'QUAN LY LE THI RIENG'}];
  Color repeatColor;
  bool visible;
  @override

  void initState() {
    visible = false;
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
      body:Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.only(right: 10.0, top:5.0),
                      child: GestureDetector(
                        child: Text(
                          'Farmer Market - Nguyễn Thị Minh Khai',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(245, 130, 32, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ), 
                    ),
                  ]
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex:10,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 15.0),
                        child: Text(
                          'Danh sách yêu cầu mua hàng',
                          style: TextStyle(
                            color:Color.fromRGBO(37, 92, 133, 1),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(top:15.0),
                        child: GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => FilterDialog(),
                            );
                          },
                          child: SvgPicture.asset('assets/icons/filter.svg'),
                        ),
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 30.0,
                    color:Color.fromRGBO(37, 92, 133, 1),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Ngày',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Người yêu cầu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Số phiếu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(bottom:60),
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*4/5),
                  child: new ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: purchaseRequestItem,
                  ),
                ),
              ],
            ),
          ),
          TopMenu(visible: visible),
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
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/selected_dashboard.svg'),
                    SizedBox(
                      height:5.0,
                    ),
                    Text("Danh sách", style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1), fontSize: 12.0, )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => GeneralInformation()),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/unselected_bill.svg'),
                      SizedBox(
                        height:5.0,
                      ),
                      Text("Phiếu", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      },
                      child: SvgPicture.asset('assets/icons/delete.svg'),
                    ),
                    SizedBox(
                      height:5.0,
                    ),
                    Text("Xóa", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/download.svg'),
                    SizedBox(
                      height:5.0,
                    ),
                    Text("Tải về", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/mail.svg'),
                    SizedBox(
                      height:5.0,
                    ),
                    Text("Gửi mail", style: TextStyle(color: Colors.white)),
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
    if(index == 0){
      repeatColor = Color.fromRGBO(254, 193, 86, 1);
    }

    if(index == 0 && repeatColor == Color.fromRGBO(254, 193, 86, 1)){
      repeatColor = Color.fromRGBO(254, 193, 86, 1);
    }
    else if(index != 0 && repeatColor == Color.fromRGBO(254, 193, 86, 1)){
      repeatColor = Color.fromRGBO(237, 104, 85, 1);
    }
    else if(repeatColor == Color.fromRGBO(237, 104, 85, 1)){
      repeatColor = Color.fromRGBO(178, 97, 112, 1);
    }
    else if(repeatColor == Color.fromRGBO(178, 97, 112, 1)){
      repeatColor = Color.fromRGBO(76, 188, 192, 1);
    }
    else if(repeatColor == Color.fromRGBO(76, 188, 192, 1)){
      repeatColor = Color.fromRGBO(93, 62, 121, 1);
    }
    else if (repeatColor == Color.fromRGBO(93, 62, 121, 1)){
      repeatColor =  Color.fromRGBO(254, 193, 86, 1);
    }

    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              color: repeatColor,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      '15/12/2018',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      list[index]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'REPO-CN02-17023125445',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Chi nhánh YC',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 104, 85, 1),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      'MYLIFE TRUONG DINH',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
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
                    flex:3,
                    child: Text(
                      'Chi nhánh nhận YC',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 104, 85, 1),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Text(
                      'TRUNG TAM CN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, 
                    child: RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Tổng SL ', style: TextStyle(color: Color.fromRGBO(237, 104, 85, 1))),
                          new TextSpan(text: '12', style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3, 
                    child: RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Tổng mặt hàng ', style: TextStyle(color: Color.fromRGBO(237, 104, 85, 1))),
                          new TextSpan(text: '36', style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4, 
                    child: RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Kho ', style:TextStyle(color: Color.fromRGBO(237, 104, 85, 1))),
                          new TextSpan(text: 'bar', style: new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
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