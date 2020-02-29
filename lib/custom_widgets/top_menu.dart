import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopMenu extends StatelessWidget {
  final bool visible;

  TopMenu({
    @required this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width*4/9,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width*4/9,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(  
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  child: MaterialButton(
                                    onPressed: () {
                                      
                                    },
                                    child: SvgPicture.asset('assets/icons/shopping_cart.svg'),
                                    color: Color.fromRGBO(249, 166, 86, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                ),
                                Text('Đặt hàng'),
                              ],
                            ), 
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  child: MaterialButton(
                                    onPressed: () {
                                    },
                                    child: SvgPicture.asset('assets/icons/receive_product.svg'),
                                    color: Color.fromRGBO(254, 193, 86, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                ),
                                Text('Nhận hàng', style: TextStyle(fontSize: 12.5), ),
                              ],
                            ), 
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 70,
                                  child: MaterialButton(
                                    onPressed: () {
                                      
                                    },
                                    child: SvgPicture.asset('assets/icons/inventory.svg'),
                                    color: Color.fromRGBO(237, 104, 85, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                ),
                                Text('Kiểm kê'),
                              ],
                            ), 
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox( 
                width: MediaQuery.of(context).size.width*1/9,
              ),
            ],
          ),
        ),
      );
  }
}