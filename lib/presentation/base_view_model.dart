import 'package:flutter/material.dart';

class BaseViewModel<T> extends ChangeNotifier {

  BaseViewModel(this._state);
  T _state;

  bool isDisposed = false;

  T get state => _state;

  @protected
  void setState(T state) {
    if (_state == state || isDisposed) {
      return;
    }
    _state = state;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    if (!isDisposed) {
      super.notifyListeners();
    } else {
     debugPrint('$this.notifyListeners() was called when already disposed.');
    }
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }
}