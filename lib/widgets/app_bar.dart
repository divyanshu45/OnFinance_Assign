import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 14, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_back_ios_new_rounded,
                size: 20, color: Colors.white),
          ),
          Expanded(
            child: Text(
              "Polygon",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration:
            BoxDecoration(color: Color(0xFF16161C), shape: BoxShape.circle),
            child: Icon(
              Icons.bookmark_border_rounded,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}