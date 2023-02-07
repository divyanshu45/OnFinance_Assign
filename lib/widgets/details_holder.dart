import 'package:flutter/material.dart';

class DetailCol extends StatelessWidget {
  const DetailCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xFF111115),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              "About MATIC",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          DetailsColumnRowAbout(
              title: "Market Cap",
              value: "95,165 Cr.",
              isChange: false,
              changeValue: ""),
          DetailsColumnRowAbout(
              title: "Revenue",
              value: "789112.84 Cr.",
              isChange: true,
              changeValue: "-50.2%"),
          DetailsColumnRowAbout(
              title: "P/E Ratio",
              value: "30.2 Cr.",
              isChange: false,
              changeValue: ""),
          DetailsColumnRowAbout(
              title: "Profit",
              value: "1098.84 Cr.",
              isChange: true,
              changeValue: "-80.2%"),
          DetailsColumnRowAbout(
              title: "Dividend Yield",
              value: "1.92",
              isChange: false,
              changeValue: ""),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              "Technical Indicators",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          DetailsColRowIndicators(
            title: "Cumulative Market Sentiment",
            value: "62.42",
            desc:
            "This measures the sentiment of the investors for that particular stock or boin based on all the news articles, blogs, research papers, financial content featuring it.",
          ),
          DetailsColRowIndicators(
            title: "Relative Strength Index (RSI)",
            value: "37.88",
            desc:
            "This measures the price movement of the securities, tell us if the stock or coin is overbought (above 70) or oversold (below 30)",
          ),
          DetailsColRowIndicators(
            title: "Volatility",
            value: "0.54",
            desc:
            "This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.",
          ),
        ],
      ),
    );
  }
}

class DetailsColumnRowAbout extends StatelessWidget {
  const DetailsColumnRowAbout(
      {super.key,
        required this.title,
        required this.value,
        required this.isChange,
        required this.changeValue});

  final String title;
  final String value;
  final bool isChange;
  final String changeValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Color(0xFF5F5F68)),
                ),
              ),
              if (isChange)
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Color(0xFF5F5F68),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Text(
                    changeValue.toString(),
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
              SizedBox(
                width: 5,
              ),
              Text(
                value.toString(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Color(0xFF1C1C1C)),
          )
        ],
      ),
    );
  }
}

class DetailsColRowIndicators extends StatelessWidget {
  const DetailsColRowIndicators(
      {Key? key, required this.title, required this.desc, required this.value})
      : super(key: key);

  final String title;
  final String desc;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 14, color: Color(0xFF5F5F68)),
          )
        ],
      ),
    );
  }
}