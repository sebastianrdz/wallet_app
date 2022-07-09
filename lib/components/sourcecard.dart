import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SourceCard extends StatelessWidget {
  const SourceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(5.0),
      width: 170.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 6.0),
            child: Row(
              children: [
                Container(margin: EdgeInsets.only(right: 10.0), child: Image(image: AssetImage('assets/icons/card_icon.png'))),
                Text(
                  'Account Title',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC0C0C0)),
                ),
              ],
            ),
          ),
          Text(
            '9,000 USD',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF535353)),
          )
        ],
      ),
    ));
  }
}
