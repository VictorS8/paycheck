import 'dart:io';

class KeysReaderTextController {
  String pathText = 'assets/storage/keys/keys.txt';
  String data = '';

  /* TODO -
      1 - Create a delete function for keys.txt file for all content to use on
      delete function of GetStorage on delete all
      2 - Create a delete function for keys.txt file for each content to use on
      delete function of GetStorage on delete each
  */

  // TODO - See path provider to create a directory to store keys.txt

  List<String>? showKeysList() {
    final file = File(pathText);
    String dataText = file.readAsStringSync();
    if (dataText == '')
      return null;
    else {
      List<String> splicedData = dataText.split(',');
      splicedData.removeLast();
      return splicedData;
    }
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
