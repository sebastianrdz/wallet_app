import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wallet_app_srdz_v1/containers/titlecontainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(margin: EdgeInsets.only(top: 15.0, bottom: 26.0), child: Image(image: AssetImage('assets/icons/logo_icon.png'))),
            Container(margin: EdgeInsets.only(bottom: 26.0), child: TitleContainer(title: 'Total', type: 'total',)),
            Container(margin: EdgeInsets.only(bottom: 26.0), child: TitleContainer(title: 'Sources', type: 'sources',)),
            Container(margin: EdgeInsets.only(bottom: 26.0), child: TitleContainer(title: 'Movements', type: 'movements',)),

          ]),
        ),
      ),
    );
  }
}
