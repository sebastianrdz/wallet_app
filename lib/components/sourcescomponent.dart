import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app_srdz_v1/components/sourcecard.dart';

class SourcesComponent extends StatelessWidget {
  const SourcesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SourceCard(),
        SourceCard(),
        SourceCard(),
      ],
    ));
  }
}
