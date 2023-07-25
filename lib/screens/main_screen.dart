import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: ParentWidget(),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String textFieldValue = '';

  void updateTextFieldValue(String newValue){
    setState(() {
      textFieldValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(onTextChanged: updateTextFieldValue),
        TextWidget(text: textFieldValue),
      ],
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final Function(String) onTextChanged;
  
  const TextFieldWidget({super.key, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onTextChanged,
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}