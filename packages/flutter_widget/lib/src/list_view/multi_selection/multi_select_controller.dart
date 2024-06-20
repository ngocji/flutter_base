import 'package:flutter_widget/flutter_widget.dart';

class MultiselectController extends ChangeNotifier {
  List<int> _selectedIndexes = [];
  List _dataSource = [];

  List<int> get selectedIndexes => _selectedIndexes;
  bool get selectionAttached => _selectedIndexes.any((element) => true);

  late int _itemsCount;

  void select(int index, {SelectionEvent event = SelectionEvent.auto}) {
    final indexContains = _selectedIndexes.contains(index);
    final computedEvent = event == SelectionEvent.auto
        ? indexContains
            ? SelectionEvent.unselect
            : SelectionEvent.select
        : event;

    if (computedEvent == SelectionEvent.select) {
      if (!indexContains) {
        _selectedIndexes.add(index);
        notifyListeners();
      }
    } else if (computedEvent == SelectionEvent.unselect) {
      if (indexContains) {
        _selectedIndexes.remove(index);
        notifyListeners();
      }
    }
  }

  List getSelectedItems() {
    final selectedItems = selectedIndexes.map((e) => _dataSource[e]).toList();

    return selectedItems;
  }

  void clearSelection() {
    if (selectedIndexes.any((element) => true)) {
      selectedIndexes.clear();
      notifyListeners();
    }
  }

  void invertSelection() {
    _selectedIndexes = List<int>.generate(_itemsCount, (i) => i)
        .toSet()
        .difference(_selectedIndexes.toSet())
        .toList();

    notifyListeners();
  }

  void selectAll() {
    _selectedIndexes = List<int>.generate(_itemsCount, (i) => i);
    notifyListeners();
  }

  bool isSelected(int index) {
    return _selectedIndexes.contains(index);
  }

  void setSelectedIndexes(List<int> newIndexes, bool notifyListeners) {
    _setSelectedIndexes(newIndexes, notifyListeners);
  }

  void setDataSource(List dataSource) {
    _setDataSource(dataSource);
  }

  void _setDataSource(List dataSource) {
    _dataSource = dataSource;
    _itemsCount = dataSource.length;
  }

  void _setSelectedIndexes(List<int> newIndexes, bool notifyListeners) {
    _selectedIndexes = newIndexes;

    if (notifyListeners) {
      this.notifyListeners();
    }
  }
}
