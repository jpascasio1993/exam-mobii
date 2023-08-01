import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

mixin ServiceLocatorMixin<E extends StatefulWidget> on State<E> {
  late GetIt serviceLocator;

  @override
  void initState() {
    super.initState();
    serviceLocator = Provider.of<GetIt>(context, listen: false);
  }
}
