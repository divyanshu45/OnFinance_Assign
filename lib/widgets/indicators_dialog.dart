import 'package:flutter/material.dart';

class IndicatorsDailog extends StatelessWidget {
  const IndicatorsDailog({Key? key}) : super(key: key);

  final bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Color(0xFF111115),
          borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16))
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Indicators",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF98B5FF)
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A35),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 2,
            color: Color(0xFF26262F),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFF141418),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "MA",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF3455FF)
                          )
                      ),
                      Icon(Icons.close, color: Color(0xFF2E2E32),),
                    ],
                  ),
                ),
                SizedBox(height: 18,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xFF18181E),
                          border: Border.all(color: Color(0xFF282830), width: 1)
                      ),
                      child: Icon(Icons.done, color: Color(0xFF4A4A4A),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFF18181E),
                              border: Border.all(color: Color(0xFF282830), width: 1)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "MA - Moving Average",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                  )
                              ),
                              Icon(Icons.keyboard_arrow_up_outlined, color: Color(0xFF4A4A4A),)
                            ],
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFF18181E),
                                  border: Border.all(color: Color(0xFF282830), width: 1)
                              ),
                              child: Icon(Icons.done, color: Color(0xFF4A4A4A),),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "10 day",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFF18181E),
                                  border: Border.all(color: Color(0xFF282830), width: 1)
                              ),
                              child: Icon(Icons.done, color: Color(0xFF4A4A4A),),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "30 day",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xFF18181E),
                          border: Border.all(color: Color(0xFF282830), width: 1)
                      ),
                      child: Icon(Icons.done, color: Color(0xFF4A4A4A),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFF18181E),
                              border: Border.all(color: Color(0xFF282830), width: 1)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "RSI - Relative Strength Index",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                  )
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined, color: Color(0xFF4A4A4A),)
                            ],
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xFF18181E),
                          border: Border.all(color: Color(0xFF282830), width: 1)
                      ),
                      child: Icon(Icons.done, color: Color(0xFF4A4A4A),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFF18181E),
                              border: Border.all(color: Color(0xFF282830), width: 1)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "BOLL  - Bollinger Bands",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white
                                  )
                              ),
                              Icon(Icons.keyboard_arrow_up_outlined, color: Color(0xFF4A4A4A),)
                            ],
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            color: Color(0xFF0C0C11),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF1D1D24)
                    ),
                    child: Center(
                      child: Text(
                          "Reset",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.black
                    ),
                    child: Center(
                      child: Text(
                          "Apply",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}