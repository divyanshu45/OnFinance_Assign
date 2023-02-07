import 'package:flutter/material.dart';

class HeadCol extends StatelessWidget {
  const HeadCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.only(right: 14),
              child: Image.asset(
                "assets/image_1.png",
                width: 48,
                height: 48,
              )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "₹94.634",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "MATIC",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discuss",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14),
                ),
                SizedBox(width: 6,),
                Image.asset("assets/image_15.png", color: Colors.black,)
              ],
            ),
          )
        ],
      ),
    );
  }
}