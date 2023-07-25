import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uagrm_navigator_app/widgets/mapa.dart';

import '../widgets/direccion_origen_input_widget.dart';

class MapaScreen extends StatelessWidget {
  MapaScreen({super.key});

  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(child: Scaffold(
        body: Stack(
      children: [
        MapSample(),
        Container(
          margin: EdgeInsets.all(25.0),
          height: 50.0,
          child: SpeechAddress(),
        ),
        //SpeenchSampleApp(),
      ],
    )), value: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));
  }
}
