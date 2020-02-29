import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FilterDialog extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Dialog(     
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.75),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Container(
          height: MediaQuery.of(context).size.height/3,
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: Text(
                                      'Từ ngày',
                                      style: TextStyle(color:Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: DropdownButton<String>(
                                      value: 'One',
                                      iconSize: 24,
                                      elevation: 16,
                                      isExpanded: true,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                      onChanged: (String newValue) {
                                        // setState(() {
                                        //   languageValue = newValue;
                                        // });
                                      },
                                      items: <String>['One', 'Two']
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
                                  Expanded(
                                    flex:1,
                                    child: Text(
                                      'Đến ngày',
                                      style: TextStyle(color:Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    flex:1,
                                    child: DropdownButton<String>(
                                      value: 'English',
                                      iconSize: 24,
                                      elevation: 16,
                                      isExpanded: true,
                                      style: TextStyle(
                                        color: Colors.black
                                      ),
                                      onChanged: (String newValue) {
                                        // setState(() {
                                        //   languageValue = newValue;
                                        // });
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
                                ],
                              ),
                            ),
                            Expanded(
                              flex:1,
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: TextFormField(
                                  style: TextStyle(color:Colors.white),
                                  decoration: InputDecoration(
                                    hintText: 'Nơi nhận YC...',
                                    hintStyle: TextStyle(color:Color.fromRGBO(159, 159, 159, 1)),
                                    enabledBorder: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                  )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: ()=>{},
                        child: Container(
                          child: Text(
                            'Duyệt',
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
                    SizedBox(width: 10.0),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: ()=>{},
                        child: Container(
                          child: Text(
                            'Chờ duyệt',
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
                    SizedBox(width: 10.0),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: ()=>{},
                        child: Container(
                          child: Text(
                            'Không duyệt',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: Color.fromRGBO(237, 104, 85, 1),
                      ),
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: ()=>{},
                        child: Container(
                          child: Text(
                            'Xử lý đặt hàng',
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
                    SizedBox(width: 10.0),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: ()=>{},
                        child: Container(
                          child: Text(
                            'Xử lý chuyển kho',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: Color.fromRGBO(93, 62, 121, 1),
                      ),
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}