import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovementCard extends StatelessWidget {
   final String? type;
   final String? amount;
  const MovementCard({Key? key, this.type, this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(5.0),
        width: double.infinity,
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
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Movement Description',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0C0C0)),
              ),
              Text(
                'Account Title',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC0C0C0)),
              ),
            ],
          ),
          SizedBox(
            width: 80.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                amount ?? 'n/a',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: type == 'red' ? Color(0xFFFF6565) : Color(0xFF5ABF64)),
              ),
              Text(
                '6 Aug 2022',
                style: TextStyle(fontSize: 12.0, color: Color(0xFFC0C0C0)),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
