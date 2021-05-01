import 'dart:io';

class KeysReaderTextController {
  String pathText = 'assets/storage/keys/keys.txt';
  String data = '';

  List<String>? showKeysList() {
    if (this.data == '')
      return null;
    else
      return this.data.split(',');
  }

  Future<File> writeKey(String key) async {
    final file = File(pathText);
    return file.writeAsString('$key,', mode: FileMode.writeOnlyAppend);
  }

  Future<String> readKeys() async {
    final file = File(pathText);
    this.data = file.readAsStringSync();
    return this.data;
  }
}
