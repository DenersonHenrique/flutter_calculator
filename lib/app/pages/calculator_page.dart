import '../models/memory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/display_widget.dart';
import '../widgets/keyboard_widget.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final MemoryModel memoryModel = MemoryModel();

  _onPressed(String command) {
    setState(() {
      memoryModel.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Column(
      children: <Widget>[
        DisplayWidget(
          text: memoryModel.value,
        ),
        KeyboardWidget(
          callback: _onPressed,
        ),
      ],
    );
  }
}
