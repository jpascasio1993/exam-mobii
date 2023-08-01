import 'package:flutter/material.dart';

abstract class BaseStore<T> extends ChangeNotifier {
  T state;
  BaseStore(this.state);
}