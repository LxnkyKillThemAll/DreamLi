import 'package:flutter/foundation.dart';
import 'package:project_1/pages/Dreams/Class.dart';
import 'package:provider/provider.dart';

class DreamListProvider extends ChangeNotifier {
  final List<dreamAdd> dreamList = [];

  void addDream(dreamAdd dream) {
    dreamList.add(dream);
    notifyListeners();
  }

}