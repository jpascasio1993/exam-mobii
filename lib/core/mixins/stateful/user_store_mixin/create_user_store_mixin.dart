import 'package:exam_mobii/core/mixins/stateful/service_locator_mixin/service_locator_mixin.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:flutter/material.dart';

mixin CreateUserStoreMixin<E extends StatefulWidget> on ServiceLocatorMixin<E> {
  late UserStore userStore;

  @override
  void initState() {
    super.initState();
    userStore = serviceLocator<UserStore>();
  }

  @override
  void dispose() {
    userStore.dispose();
    super.dispose();
  }
}
