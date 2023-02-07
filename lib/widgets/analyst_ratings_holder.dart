import 'package:flutter/material.dart';

class AnalystRating extends StatelessWidget {
  const AnalystRating({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  child: Text(
                    "Analyst Ratings",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(color: Color(0xFF16161D)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8)),
                                color: Colors.blue),
                            child: Text(
                              "Buy",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8)),
                                color: Colors.white),
                            child: Text(
                              "Sell",
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            )),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Strong\nBuy",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        "Buy",
                        style: TextStyle(color: Color(0xFF3D3D45), fontSize: 14),
                      ),
                      Text(
                        "Hold",
                        style: TextStyle(color: Color(0xFF3D3D45), fontSize: 14),
                      ),
                      Text(
                        "Sell",
                        style: TextStyle(color: Color(0xFF3D3D45), fontSize: 14),
                      ),
                      Text(
                        "Strong\nSell",
                        style: TextStyle(color: Color(0xFF3D3D45), fontSize: 14),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("64%",
                          style: TextStyle(
                              color: Color(0xFF38E1B8),
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Buy Rating",
                          style: TextStyle(
                              color: Color(0xFF38E1B8),
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(color: Color(0xFF16161D)),
                ),
                AnalyticsBullsAndBears(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
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
                    color: Color(0xFF38E5BB),
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

class AnalyticsBullsAndBears extends StatelessWidget {
  const AnalyticsBullsAndBears({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Bulls",
                        style: TextStyle(
                          color: Color(0xFF515158),
                          fontSize: 14,
                        )),
                    Text("Historical Accuracy",
                        style: TextStyle(
                          color: Color(0xFF515158),
                          fontSize: 14,
                        )),
                  ],
                ),
                BearAndBullsHolder(
                    image: "assets/image_2.png",
                    title: "HDFC Asset Mngt. Co",
                    value: "86%"),
                BearAndBullsHolder(
                    image: "assets/image_3.png",
                    title: "Solar Industries",
                    value: " 92%"),
                SizedBox(
                  height: 24,
                ),
                Text("Top Bears",
                    style: TextStyle(
                      color: Color(0xFF515158),
                      fontSize: 14,
                    )),
                BearAndBullsHolder(
                    image: "assets/image_4.png",
                    title: "United Spirits",
                    value: "86%"),
                BearAndBullsHolder(
                    image: "assets/image_5.png",
                    title: "Home First Finance",
                    value: "92%"),
              ],
            )),
      ],
    );
  }
}

class BearAndBullsHolder extends StatelessWidget {
  const BearAndBullsHolder(
      {Key? key, required this.image, required this.title, required this.value})
      : super(key: key);

  final String image;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image.toString(), width: 16, height: 16),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(title,
                style: TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 14,
                )),
          ),
          Text(value,
              style: TextStyle(
                color: Color(0xFFE1E1E1),
                fontSize: 14,
              ))
        ],
      ),
    );
  }
}