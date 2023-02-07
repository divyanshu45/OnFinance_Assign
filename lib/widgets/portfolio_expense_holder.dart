import 'package:flutter/material.dart';

class PortfolioExpense extends StatelessWidget {
  const PortfolioExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF070707),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Portfolio Exposure",
                        style: TextStyle(color: Color(0xFFF8B545), fontSize: 16),
                      ),
                      Text(
                        "₹14,69,073",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(color: Color(0xFF16161D)),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("INVESTED",
                                style: TextStyle(
                                    color: Color(0xFF61616A), fontSize: 10)),
                            Text("QUANTITY",
                                style: TextStyle(
                                    color: Color(0xFF61616A), fontSize: 10)),
                            Text("BROKER",
                                style: TextStyle(
                                    color: Color(0xFF61616A), fontSize: 10))
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("₹6480",
                                style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                            Text("1.5",
                                style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                            Image.asset(
                              "assets/image_6.png",
                              width: 16,
                              height: 16,
                            )
                          ],
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 6,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFF8B545),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
            ],
          )
        ],
      ),
    );
  }
}