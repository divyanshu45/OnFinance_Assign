import 'package:flutter/material.dart';

class HistoricalYield extends StatelessWidget {
  const HistoricalYield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF070707),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "If You would have Invested",
            style: TextStyle(fontSize: 18, color: Color(0xFF8D8D8D)),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Text(
                "\$1000000",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Expanded(
                  child: Slider(
                    max: 100,
                    value: 20,
                    onChanged: (double value) {},
                  ))
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "For previous",
            style: TextStyle(fontSize: 18, color: Color(0xFF8D8D8D)),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Text(
                "1 Year",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Expanded(
                  child: Slider(
                    max: 100,
                    value: 20,
                    onChanged: (double value) {},
                  ))
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "You would have",
            style: TextStyle(fontSize: 18, color: Color(0xFF8D8D8D)),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$1120.78",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "1250.67 MATIC",
                style: TextStyle(fontSize: 16, color: Color(0xFF3455FF)),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF0E0E0E),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image_7.png",
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("MATIC",
                              style:
                              TextStyle(fontSize: 14, color: Colors.white))
                        ]),
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image_8.png",
                          width: 16,
                          height: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("BTC",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF5F5F5F)))
                      ]),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/image_9.png",
                              width: 16, height: 16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("ETH",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF5F5F5F)))
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HistoricalYieldHolder extends StatelessWidget {
  const HistoricalYieldHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 40,
                child: Container(
                  width:  MediaQuery.of(context).size.width,
                  color: Color(0xFF282831),
                  child: Container(
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Center(
                        child: Container(
                          color: Colors.black,
                          height: 2,
                          width: 240,
                        )),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                decoration: BoxDecoration(
                    color: Color(0xFF282831),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14), topRight: Radius.circular(14))),
                child: Text("HISTORICAL YEILD",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
          Container(height: 13,),
          Container(
            child: HistoricalYield(),
            padding: EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              color: Color(0xFF282831),
            ),
          ),
        ],
      ),
    );
  }
}