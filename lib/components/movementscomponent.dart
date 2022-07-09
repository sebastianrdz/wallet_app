import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app_srdz_v1/components/movementcard.dart';

class MovementsComponent extends StatelessWidget {
  const MovementsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 363.0,
        child: ListView(
      children: <Widget>[
        MovementCard(type: 'red', amount: '- 9,000 USD'),
        MovementCard(type: 'green',amount: '+ 9,000 USD'),
        MovementCard(type: 'red', amount: '- 9,000 USD'),
        MovementCard(type: 'green',amount: '+ 9,000 USD'),
        MovementCard(type: 'red', amount: '- 9,000 USD'),
        MovementCard(type: 'green',amount: '+ 9,000 USD'),]
    ));
  }
}