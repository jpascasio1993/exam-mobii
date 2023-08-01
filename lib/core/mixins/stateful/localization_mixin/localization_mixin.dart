import 'package:exam_mobii/l10n/l10n.dart';
import 'package:flutter/material.dart';

mixin LocalizationMixin<E extends StatefulWidget> on State<E> {
  late AppLocalization localization;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    localization = AppLocalization.of(context);
  }
}
