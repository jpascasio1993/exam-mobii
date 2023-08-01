import 'package:exam_mobii/core/widget/abstract_stateless_widget/abstract_stateless_widget.dart';
import 'package:exam_mobii/l10n/l10n.dart';
import 'package:flutter/material.dart';

mixin LocalizationMixin on AbstractStatelessWidget {
  late AppLocalization localization;

  @override
  Widget build(BuildContext context) {
    localization = AppLocalization.of(context);
    return super.build(context);
  }
}