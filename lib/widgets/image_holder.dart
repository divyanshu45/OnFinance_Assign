import 'package:finance_assign/widgets/indicators_dialog.dart';
import 'package:flutter/material.dart';

class ImageHolder extends StatefulWidget {
  const ImageHolder({super.key});

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  bool isLine = true;
  String imagePath = "assets/image_12.png";
  String indicatorImage = "assets/image_13.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      color: Color(0xFF111115),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: 450,
              child: Image.asset(imagePath, fit: BoxFit.fitWidth,)
          ),
          Positioned(
            top: 15,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/image_14.png"),
                          SizedBox(width: 4,),
                          Text(
                            "2.79%",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.green
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                      decoration: BoxDecoration(
                          color: Color(0xFF202027),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Text(
                        "Ascneding Angle",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF98B5FF)
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                      decoration: BoxDecoration(
                          color: Color(0xFF202027),
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Text(
                        "High Exposure",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFFF4545)
                        ),
                      ),
                    )
                  ],
                )
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF070707),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.blue,
                          ),
                          child: Text(
                            "1H",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          child: Text(
                            "1D",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF434343)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          child: Text(
                            "1W",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF434343)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          child: Text(
                            "1M",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF434343)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                          child: Text(
                            "5Y",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF434343)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(isLine){
                          isLine = false;
                          imagePath = "assets/image_11.png";
                          indicatorImage = "assets/image_16.png";
                        }else{
                          isLine = true;
                          imagePath = "assets/image_12.png";;
                          indicatorImage = "assets/image_13.png";
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFF070707),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(indicatorImage),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          if(!isLine)Positioned(
            bottom: 65,
            right: 20,
            child: InkWell(
              onTap: (){
                showDialog(context: context,  barrierDismissible: false, builder: (context) => Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    IndicatorsDailog()
                  ],
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xFF070707),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/image_17.png", color: Color(0xFFCACACA),),
                    SizedBox(width: 4,),
                    Text(
                        "Indicators",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}