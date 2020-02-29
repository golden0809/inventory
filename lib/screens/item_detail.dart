import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'package:inventory/screens/search.dart';
import 'package:inventory/screens/shopping_cart.dart';

import 'dashboard.dart';
import 'general_information.dart';

class ItemDetail extends StatefulWidget {
  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  String item = '';
  int index;
  int count;
  @override

  void initState() {
    super.initState();
    item = 'Croissant chocolate';
    index = 1;
    count = 56;
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
                child: SvgPicture.asset('assets/icons/window.svg'),
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
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 36.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_) => GeneralInformation()),
                        );
                      },
                      child: Container(
                        child: Text(
                          'Thông tin chung',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      color: Color.fromRGBO(37, 91, 134, 1),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {
                      },
                      child: Container(
                        child: Text(
                          'Chi tiết',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(37, 91, 134, 1),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height-141,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5, 
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: MaterialButton(
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (_) => Search()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.only(bottom:1),
                                child: Icon(
                                  Icons.search,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                              color: Color.fromRGBO(245, 130, 32, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                padding: EdgeInsets.only(bottom:1),
                                child: Text(
                                  'Food',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(37, 92, 133, 1),
                                  ),
                                ),
                              ),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'Food yên',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(254, 193, 86, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'Beverrage',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(254, 193, 86, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'BEER',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(76, 188, 192, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'Food Robata',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(76, 188, 192, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'Món thêmbếp lạnh',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(178, 97, 112, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 3,
                            child: MaterialButton(
                              onPressed: ()=>{},
                              child: Container(
                                child: Text(
                                  'juice',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              color: Color.fromRGBO(178, 97, 112, 1),
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Expanded(
                            flex: 4,
                            child: MaterialButton(
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (_) => ShoppingCart()),
                                );
                              },
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Badge(
                                    borderRadius: 10,
                                    shape: BadgeShape.square,
                                    badgeColor: Colors.white,
                                    badgeContent: Text('12', style: TextStyle(color: Color.fromRGBO(18, 57, 86, 1), fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    child: SvgPicture.asset('assets/icons/shopping_cart.svg'),
                                  ),
                                ],
                              ),
                              color: Color.fromRGBO(15, 58, 90, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 18,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Expanded(
                                    flex:  1,
                                    child: MaterialButton(
                                      onPressed: ()=>{},
                                      child: Container(
                                        child: Text(
                                          'HÀNG HÓA',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(37, 92, 133, 1),
                                          ),
                                        ),
                                      ),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Color.fromRGBO(37, 92, 133, 1), width: 2.0)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Expanded(
                                    flex:  1,
                                    child: MaterialButton(
                                      onPressed: ()=>{},
                                      child: Container(
                                        child: Text(
                                          'NVL',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(37, 92, 133, 1),
                                          ),
                                        ),
                                      ),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Color.fromRGBO(37, 92, 133, 1), width: 2.0)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Expanded(
                                    flex:  1,
                                    child: MaterialButton(
                                      onPressed: ()=>{},
                                      child: Container(
                                        child: Text(
                                          'CCDC',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(37, 92, 133, 1),
                                          ),
                                        ),
                                      ),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Color.fromRGBO(37, 92, 133, 1), width: 2.0)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Expanded(
                                    flex:  1,
                                    child: MaterialButton(
                                      onPressed: ()=>{},
                                      child: Container(
                                        child: Text(
                                          'BTP',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(37, 92, 133, 1),
                                          ),
                                        ),
                                      ),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Color.fromRGBO(37, 92, 133, 1), width: 2.0)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Color.fromRGBO(0, 0, 0, 0.81),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      padding: EdgeInsets.only(left:5.0),
                                      child: Text(
                                        // 'Croissant chocolate',
                                        item,
                                        style: TextStyle(color:Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          item = 'Croissant chocolate';
                                          index --;
                                          count = 56;
                                        });
                                      },
                                      child: Icon(Icons.arrow_left, color:Colors.white, size: 40,),
                                    ),
                                  ),
                                  Expanded(
                                    flex:2,
                                    child: Center(
                                      child:  Text(index.toString()+' / 10', style: TextStyle(color:Colors.white, fontSize: 16),),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          item = 'Bánh Black forest';
                                          index ++;
                                          count = 120;
                                        });
                                      },
                                      child: Icon(Icons.arrow_right, color:Colors.white, size: 40,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.black,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex:1,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'SL Tồn',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    flex:2,
                                    child: Container(
                                      padding: EdgeInsets.only(top:5.0),
                                      margin: EdgeInsets.only(right:10.0),
                                      height: 28.0,
                                      color: Color.fromRGBO(254, 193, 86, 1),
                                      child: Text(
                                        '23',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: Text(
                                      'SL Đặt',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    flex:2,
                                    child: Container(
                                      padding: EdgeInsets.only(top:5.0),
                                      margin: EdgeInsets.only(right:10.0),
                                      height: 28.0,
                                      color: Color.fromRGBO(237, 104, 85, 1),
                                      child: Text(
                                        count.toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding:EdgeInsets.only(left:15.0, right:15.0),
                              child: TextFormField(),
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
              flex:4,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}