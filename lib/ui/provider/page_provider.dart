import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setPage(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List<int> _selectedIndices = [0, 1, 2, 3];

  List<int> get selectedIndices => _selectedIndices;

  void setSelectedIndex(int index, int chipIndex) {
    _selectedIndices[chipIndex] = index;
    notifyListeners();
  }
}
