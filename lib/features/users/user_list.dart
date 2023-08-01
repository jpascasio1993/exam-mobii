// ignore_for_file: must_be_immutable

import 'package:exam_mobii/core/mixins/stateless/localization_mixin/localization_mixin.dart';
import 'package:exam_mobii/core/mixins/stateless/user_store_mixin/user_store_mixin.dart';
import 'package:exam_mobii/core/widget/abstract_stateless_widget/abstract_stateless_widget.dart';
import 'package:exam_mobii/core/widget/message_display/message_display.dart';
import 'package:exam_mobii/data/store/user_store/user_store.dart';
import 'package:exam_mobii/features/users/user_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends AbstractStatelessWidget with UserStoreMixin, LocalizationMixin {
  UserList({super.key});

  void _retry() {
    super.userStore.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final state = context.watch<UserStore>().state;

    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.exception != null) {
      return MessageDisplay(localization.retry, _retry,
          title: localization.errorMessage, message: localization.errorSubMessage, icon: Icons.error_outline);
    }

    if (state.users.isEmpty) {
      return MessageDisplay(localization.retry, _retry, title: localization.emptyMessage, message: localization.errorSubMessage, icon: Icons.group);
    }

    return RefreshIndicator(
        child: ListView.builder(
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              final user = super.userStore.state.users[index];
              return UserListItem(user: user);
            }),
        onRefresh: () async => _retry());
  }
}
