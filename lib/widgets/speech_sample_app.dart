import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeenchSampleApp extends StatefulWidget {
  const SpeenchSampleApp({Key? key}) : super(key: key);
  @override
  State<SpeenchSampleApp> createState() => _SpeenchSampleAppState();
}

class _SpeenchSampleAppState extends State<SpeenchSampleApp> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text('palabras reconocidas:'),
          Text(_speechToText.isListening
              ? '$_lastWords'
              : _speechEnabled
                  ? 'Presiona el boton para comenzar a escuchar'
                  : 'Speech not evaialbe'),
          TextButton(
              onPressed: _speechToText.isNotListening
                  ? _startListening
                  : _stopListening,
              child: Text('escuchar'))
        ],
      ),
    );
  }
}
