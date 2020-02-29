import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String dropdownValue = 'Farmer Market - Nguyễn Thị Minh Khai';
  String languageValue = 'English';

  @override

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/login_logo.svg'
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:25.0),
                    child: Text('ver 2018'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/7),
              child: Container(
                height: MediaQuery.of(context).size.height*4/9,
                color: Color.fromRGBO(37, 92, 133, 1),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*7/9,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: SvgPicture.asset('assets/icons/down_arrow.svg'),
                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Farmer Market - Nguyễn Thị Minh Khai', 'Two', 'Three', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          })
                          .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*7/9,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: SvgPicture.asset('assets/icons/down_arrow.svg'),
                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Farmer Market - Nguyễn Thị Minh Khai', 'Two', 'Three', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          })
                          .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*7/9,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.more_horiz, color: Colors.white,),
                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Farmer Market - Nguyễn Thị Minh Khai', 'Two', 'Three', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          })
                          .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard()), 
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SvgPicture.asset('assets/icons/login.svg'),
                          ],
                        ),
                        color: Color.fromRGBO(255, 190, 93, 1),
                        elevation: 0,
                        minWidth: 150,
                        height: 40,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: DropdownButton<String>(
                      value: languageValue,
                      icon: SvgPicture.asset('assets/icons/language.svg'),
                      iconSize: 24,
                      elevation: 16,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.black
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          languageValue = newValue;
                        });
                      },
                      items: <String>['English', 'Vietmese']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        })
                        .toList(),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8, left: 20),
              child:Row(
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/icons/vnyi.svg'
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    height: MediaQuery.of(context).size.height/10,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top:5.0),
                          child: Text(
                            'Công Ty Cổ Phần Đầu Tư Công Nghệ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:3.0),
                          child: Text(
                            'Trí Tuệ Trẻ (VNYI)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:3.0),
                          child: Text(
                            'www.vnyi.com  |  1900561238',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),                    
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}