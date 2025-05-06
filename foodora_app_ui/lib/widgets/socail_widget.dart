import 'package:flutter/material.dart';

class SocailWidget extends StatelessWidget {
   SocailWidget({super.key,required this.hightOr});
  double hightOr;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.center,
          child: Text(
            "OR",
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(168, 167, 167, 1),
            ),
          ),
        ),
        SizedBox(height: hightOr,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.only(top: 16),
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(238, 238, 246, 1)),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/facebook.png"),
            ),
            SizedBox(width: 31),
            Container(
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(238, 238, 246, 1)),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/twitter.png"),
            ),
            SizedBox(width: 31),
    
            Container(
              width: 47,
              height: 46,
              decoration: BoxDecoration(
                // border: Border.all(color: Color.fromRGBO(238, 238, 246, 1)),
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/images/google.png"),
            ),
          ],
        ),
    ],);
  }
}