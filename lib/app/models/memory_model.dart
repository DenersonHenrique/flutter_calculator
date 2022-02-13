class MemoryModel {
  String _value = '0';

  String get value => _value;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }

  _allClear() {
    _value = '0';
  }
}
