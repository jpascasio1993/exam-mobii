import 'package:exam_mobii/core/widget/abstract_stateless_widget/abstract_stateless_widget.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

mixin UserStoreMixin on AbstractStatelessWidget {
  late UserStore userStore;

  @override
  Widget build(BuildContext context) {
    userStore = Provider.of<UserStore>(context, listen: false);
    return super.build(context);
  }
}
