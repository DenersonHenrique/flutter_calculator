import 'button_widget.dart';
import 'button_row_widget.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final void Function(String) callback;

  const KeyboardWidget({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: 'AC',
                callback: callback,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget(
                text: '%',
                callback: callback,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget.operation(
                text: '/',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: '7',
                callback: callback,
              ),
              ButtonWidget(
                text: '8',
                callback: callback,
              ),
              ButtonWidget(
                text: '9',
                callback: callback,
              ),
              ButtonWidget.operation(
                text: 'X',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: '4',
                callback: callback,
              ),
              ButtonWidget(
                text: '5',
                callback: callback,
              ),
              ButtonWidget(
                text: '6',
                callback: callback,
              ),
              ButtonWidget.operation(
                text: '-',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: '1',
                callback: callback,
              ),
              ButtonWidget(
                text: '2',
                callback: callback,
              ),
              ButtonWidget(
                text: '3',
                callback: callback,
              ),
              ButtonWidget.operation(
                text: '+',
                callback: callback,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: '0',
                callback: callback,
              ),
              ButtonWidget(
                text: '.',
                callback: callback,
              ),
              ButtonWidget.operation(
                text: '=',
                callback: callback,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
