// ignore_for_file: must_be_immutable

import 'package:exam_mobii/core/mixins/stateless/localization_mixin/localization_mixin.dart';
import 'package:exam_mobii/core/widget/abstract_stateless_widget/abstract_stateless_widget.dart';
import 'package:exam_mobii/data/domain/user/user.dart';
import 'package:flutter/material.dart';

class UserDetails extends AbstractStatelessWidget with LocalizationMixin {
  final User user;

  UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
          centerTitle: true,
        ),
        body: DataTable(
          columns: [
            DataColumn(label: Text(localization.id)),
            DataColumn(label: Text(localization.name)),
            DataColumn(label: Text(localization.imageUrl))
          ],
          rows: [
            DataRow(cells: [DataCell(Text(user.id)), DataCell(Text(user.name)), DataCell(Text(user.imageUrl ?? ''))])
          ],
        ));
  }
}
