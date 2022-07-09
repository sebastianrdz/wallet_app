import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app_srdz_v1/components/movementscomponent.dart';
import 'package:wallet_app_srdz_v1/components/sourcescomponent.dart';
import 'package:wallet_app_srdz_v1/components/totalcomponent.dart';

class TitleContainer extends StatelessWidget {
  final String? title;
  final String? type;
  const TitleContainer({Key? key, this.title, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Text(
              title ?? "n/a",
              style: TextStyle(color: Color(0xFFC0C0C0), fontWeight: FontWeight.bold),
            )),
        type == 'total'
            ? TotalComponent()
            : type == 'sources'
                ? SourcesComponent()
                : type == 'movements'
                    ? MovementsComponent()
                    : Container(child: Text('n/a')),
      ],
    );
  }
}
