import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uagrm_navigator_app/screens/main_screen.dart';
import 'package:uagrm_navigator_app/screens/mapa_screen.dart';
import 'package:uagrm_navigator_app/widgets/bucador_widget.dart';
import 'package:uagrm_navigator_app/widgets/direccion_origen_input_widget.dart';
import 'package:uagrm_navigator_app/widgets/mapa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapaScreen());
  }
}