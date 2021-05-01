import 'package:get_storage/get_storage.dart';
import 'package:paycheck/controllers/keys/keys_reader_text_controller.dart';

class KeysStorageController {
  KeysReaderTextController _keysReaderController = KeysReaderTextController();

  final storageKeys = GetStorage();

  writeKeyAndValue(String payName, double payCost) {
    double? payCostFromKey = storageKeys.read(payName);
    if (payCostFromKey == null) {
      storageKeys.write(payName, payCost);
      _keysReaderController.readKeys();
      _keysReaderController.writeKey(payName);
    }
  }

  double readKey(String payName) {
    double? payValue = storageKeys.read(payName);
    if (payValue != null)
      return payValue;
    else
      return 0;
  }

  List<String>? showKeysAsList() {
    List<String>? keysList = _keysReaderController.showKeysList();
    if (keysList == null)
      return null;
    else
      return keysList;
  }

  Map<String, double> showKeysAndValues() {
    List<String>? keysList = showKeysAsList();
    if (keysList == null) return {};
    int keysNumber = keysList.length;
    late List<double> valuesList;
    for (int i = 0; i < keysNumber; i++)
      valuesList = storageKeys.read(keysList[i]);
    return Map.fromIterables(keysList, valuesList);
  }
}
