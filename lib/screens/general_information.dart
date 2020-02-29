import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory/custom_widgets/top_menu.dart';
import 'browser.dart';
import 'dashboard.dart';
import 'detail.dart';

class GeneralInformation extends StatefulWidget {
  @override
  _GeneralInformationState createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  
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
            child: ListView(
              children: <Widget>[
                Container(
                  height: 36.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: ()=>{},
                          child: Container(
                            child: Text(
                              'Thông tin chung',
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
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: ()=>{
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (_) => Detail()),
                            ),
                          },
                          child: Container(
                            child: Text(
                              'Chi tiết',
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*1.1/3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: Container(
                          color: Color.fromRGBO(76, 188, 192, 1),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: ListView(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5.0, top: 5.0),
                                color: Color.fromRGBO(85, 220, 73, 1),
                                child: Text(
                                  'Mã phiếu',
                                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                                ),
                              ),
                              Container(
                                height: 37.0,
                                color: Color.fromRGBO(85, 220, 73, 1),
                                margin: EdgeInsets.only(bottom: 10.0,),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    suffixIcon: Container(
                                      padding: EdgeInsets.only(right: 5.0),
                                      child: SvgPicture.asset('assets/icons/mail.svg'),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Kho',
                                style: TextStyle(color: Colors.black, fontSize: 12.0),
                              ),
                              Container(
                                height: 37.0,
                                padding: EdgeInsets.only(bottom: 10.0,),
                                child: TextFormField(
                                
                                ),
                              ),
                              Text(
                                'Chi nhánh nhận YC',
                                style: TextStyle(color: Colors.black, fontSize: 12.0),
                              ),
                              Container(
                                height: 37.0,
                                padding: EdgeInsets.only(bottom: 10.0,),
                                child: TextFormField(
                                
                                ),
                              ),
                              Text(
                                'Ngày',
                                style: TextStyle(color: Colors.black, fontSize: 12.0),  
                              ),
                              Container(
                                height: 37.0,
                                padding: EdgeInsets.only(bottom: 10.0,),
                                child: TextFormField(
                                
                                ),
                              ),
                              Text(
                                'Diễn giải',
                                style: TextStyle(color: Colors.black, fontSize: 12.0),
                                ),
                              Container(
                                height: 37.0,
                                padding: EdgeInsets.only(bottom: 10.0,),
                                child: TextFormField(
                                
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/export.svg'),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Xuất chuyển nội bộ',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 92, 133, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (_) => Browser()),
                              );
                          },
                          child: Column(
                            children: <Widget>[
                              SvgPicture.asset('assets/icons/tick.svg'),
                              Container(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Duyệt',
                                  style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/add_new.svg'),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Thêm mới',
                                style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/edit.svg'),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Chỉnh sửa',
                                style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/copy.svg'),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Sao chép',
                                style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/color_delete.svg'),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Xóa',
                                style: TextStyle(color: Color.fromRGBO(37, 92, 133, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10.0),
                  padding: EdgeInsets.only(left: 5.0),
                  height: 66.0,
                  color: Color.fromRGBO(51, 128, 186, 1),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 9,
                              child: Text('Người tạo', style: TextStyle(color: Colors.white),),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('[TN02] thungan', style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text('Ngày tạo', style: TextStyle(color: Colors.white),),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('19/04/2019 - 12:23', style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.0),
                  height: 66.0,
                  color: Color.fromRGBO(42, 140, 213, 1),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Text('Người duyệt', style: TextStyle(color: Colors.white),),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text('[SUP00068] Trần Nguyễn Anh Tùng ', style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 9,
                              child: Text('Ngày duyệt', style: TextStyle(color: Colors.white),),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('24/04/2019 - 05:23', style: TextStyle(color: Colors.white),),
                            ),
                          ],
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
                child: GestureDetector(
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
                      Text("Danh sách", style: TextStyle(color: Colors.white, fontSize: 12.0 )),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                padding: EdgeInsets.only(top:7.0),
                color: Colors.white,
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
                    SvgPicture.asset('assets/icons/delete.svg'),
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
}