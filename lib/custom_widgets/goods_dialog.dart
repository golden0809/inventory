import 'package:flutter/material.dart';
class GoodsDialog extends StatelessWidget {
  final String title, image;

  GoodsDialog({
    @required this.title,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(     
      backgroundColor: Colors.transparent,
      child: dialogContent(context, title, image),
    );
  }
}

dialogContent(BuildContext context, title, image) {
  return Container(
    height: MediaQuery.of(context).size.height*1/2,
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                  onTap: (){
                      Navigator.of(context).pop();
                  },
                  child: Icon(Icons.clear, color: Color.fromRGBO(37, 92, 133, 1), size: 30.0),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(image, fit: BoxFit.fill),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),    
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}