import 'package:flutter/material.dart';
import 'package:flutter_calculator/app/models/memory_model.dart';
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
