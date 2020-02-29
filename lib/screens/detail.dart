import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory/custom_widgets/goods_dialog.dart';
import 'package:inventory/custom_widgets/top_menu.dart';
import 'package:badges/badges.dart';
import 'package:inventory/screens/search.dart';
import 'package:inventory/screens/shopping_cart.dart';
import 'dashboard.dart';
import 'general_information.dart';
import 'item_detail.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

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
      body: Stack(
        children: <Widget>[
          Container(
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
                                        height: 5.0,
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
                                flex: 10,
                                child: GridView.count(
                                  crossAxisCount: 3,
                                  children: List.generate(20, (index) {
                                    return GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => GoodsDialog(title: 'Bánh Red velvet', image: 'assets/images/beer.png',),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(2.0),
                                        child: Stack(
                                          fit: StackFit.expand,
                                          children: <Widget>[
                                            Image.asset('assets/images/beer.png', fit: BoxFit.fill,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    padding:EdgeInsets.only(left: 3.0, right: 3.0),
                                                    child:  Text(
                                                      'Bánh Red velvet',
                                                      style: TextStyle(color:Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Icon(Icons.info_outline, color: Colors.white,),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Container(color:Color.fromRGBO(252, 175, 23, 1)),
                                                      Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            flex:2,
                                                            child: GestureDetector(
                                                              onTap: (){
                                                                Navigator.push(
                                                                  context, 
                                                                  MaterialPageRoute(builder: (_) => ItemDetail()),
                                                                );
                                                              },
                                                              child: RichText(
                                                                textAlign: TextAlign.start,
                                                                text: new TextSpan(
                                                                  style: new TextStyle(
                                                                    color: Colors.white,
                                                                  ),
                                                                  children: <TextSpan>[
                                                                    new TextSpan(text: '56', style: new TextStyle(fontWeight: FontWeight.bold)),
                                                                    new TextSpan(text: 'Cái'),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
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
                        Text("Danh sách", style: TextStyle(color: Colors.white, fontSize: 12.5)),
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