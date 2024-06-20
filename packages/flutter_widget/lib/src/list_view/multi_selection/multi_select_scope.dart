
import '../../../flutter_widget.dart';

typedef SelectionChangeCallback<T> = void Function(
    List<int> selectedIndexes, List<T> selectedItems);

class MultiselectScope<T> extends StatefulWidget {
  final Widget child;

  final SelectionChangeCallback<T>? onSelectionChanged;

  final MultiselectController? controller;
  final List<T> dataSource;
  final bool clearSelectionOnPop;
  final bool keepSelectedItemsBetweenUpdates;
  final List<int>? initialSelectedIndexes;

  const MultiselectScope({
    Key? key,
    required this.dataSource,
    this.controller,
    this.onSelectionChanged,
    this.clearSelectionOnPop = false,
    this.keepSelectedItemsBetweenUpdates = true,
    this.initialSelectedIndexes,
    required this.child,
  }) : super(key: key);

  @override
  _MultiselectScopeState<T> createState() => _MultiselectScopeState<T>();

  static MultiselectController controllerOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_InheritedMultiselectNotifier>()!
        .controller;
  }
}

class _MultiselectScopeState<T> extends State<MultiselectScope<T>> {
  late List<int> _hashesCopy;
  late MultiselectController _multiselectController;

  void _onSelectionChangedFunc() {
    if (widget.onSelectionChanged != null) {
      widget.onSelectionChanged!(_multiselectController.selectedIndexes,
          _multiselectController.getSelectedItems().cast<T>());
    }
  }

  List<int> _createHashesCopy(MultiselectScope widget) {
    return widget.dataSource.map((e) => e.hashCode).toList();
  }

  @override
  void initState() {
    super.initState();

    _multiselectController = widget.controller ?? MultiselectController();

    _hashesCopy = _createHashesCopy(widget);
    _multiselectController.setDataSource(widget.dataSource);

    if (widget.initialSelectedIndexes != null) {
      _multiselectController.setSelectedIndexes(
          widget.initialSelectedIndexes!, false);
    }

    if (widget.onSelectionChanged != null) {
      _multiselectController.addListener(_onSelectionChangedFunc);
    }
  }

  @override
  void dispose() {
    super.dispose();

    _multiselectController.removeListener(_onSelectionChangedFunc);
    _multiselectController.dispose();
  }

  @override
  void didUpdateWidget(MultiselectScope<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('didUpdateWidget GreatMultiselect');

    if (widget.keepSelectedItemsBetweenUpdates) {
      _updateController(oldWidget);
    }

    _multiselectController.setDataSource(widget.dataSource);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build GreatMultiselect');
    return widget.clearSelectionOnPop
        ? WillPopScope(
            onWillPop: () async {
              if (_multiselectController.selectionAttached) {
                _multiselectController.clearSelection();
                return false;
              }

              return true;
            },
            child: _buildMultiselectScope(),
          )
        : _buildMultiselectScope();
  }

  _InheritedMultiselectNotifier _buildMultiselectScope() =>
      _InheritedMultiselectNotifier(
          controller: _multiselectController,
          child: widget.child);

  void _updateController(MultiselectScope oldWidget) {
    if (!oldWidget.keepSelectedItemsBetweenUpdates &&
        widget.keepSelectedItemsBetweenUpdates) {
      _hashesCopy = _createHashesCopy(oldWidget);
    }

    final newHashesCopy = _createHashesCopy(widget);

    final oldSelectedHashes = _multiselectController.selectedIndexes
        .map((e) => _hashesCopy[e])
        .toList();

    final newIndexes = <int>[];
    newHashesCopy.asMap().forEach((index, value) {
      if (oldSelectedHashes.contains(value)) {
        newIndexes.add(index);
      }
    });

    _multiselectController.setSelectedIndexes(newIndexes, false);
    _hashesCopy = newHashesCopy;
  }
}

class _InheritedMultiselectNotifier
    extends InheritedNotifier<MultiselectController> {
  final MultiselectController controller;

  const _InheritedMultiselectNotifier(
      {Key? key, required Widget child, required this.controller})
      : super(key: key, child: child, notifier: controller);
}
