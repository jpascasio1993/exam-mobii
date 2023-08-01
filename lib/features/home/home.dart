// ignore_for_file: library_private_types_in_public_api

import 'package:exam_mobii/core/mixins/stateful/service_locator_mixin/service_locator_mixin.dart';
import 'package:exam_mobii/core/mixins/stateful/localization_mixin/localization_mixin.dart';
import 'package:exam_mobii/core/mixins/stateful/user_store_mixin/create_user_store_mixin.dart';
import 'package:exam_mobii/core/widget/widget_view/widget_view.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:exam_mobii/features/users/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeController createState() => _HomeController();
}

class _HomeController extends State<Home> with ServiceLocatorMixin, LocalizationMixin, CreateUserStoreMixin {
  @override
  void initState() {
    super.initState();
    super.userStore.getUsers();
  }

  @override
  Widget build(BuildContext context) =>
      MultiProvider(providers: [ChangeNotifierProvider<UserStore>.value(value: super.userStore)], child: _HomeView(this));
}

class _HomeView extends WidgetView<Home, _HomeController> {
  const _HomeView(_HomeController state) : super(state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(state.localization.appName),
        centerTitle: true,
      ),
      body: UserList(),
    );
  }
}
