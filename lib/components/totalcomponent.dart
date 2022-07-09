import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TotalComponent extends StatelessWidget {
  const TotalComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.0),
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
      child: Row(
        children: [
          Container(margin: EdgeInsets.only(right: 10.0), child: Image(image: AssetImage('assets/icons/total_icon.png'))),
          Text(
            '9,999.00 USD',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF535353),
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
