// ignore_for_file: must_be_immutable

import 'package:exam_mobii/core/mixins/stateless/localization_mixin/localization_mixin.dart';
import 'package:exam_mobii/core/widget/abstract_stateless_widget/abstract_stateless_widget.dart';
import 'package:flutter/material.dart';

class MessageDisplay extends AbstractStatelessWidget with LocalizationMixin {
  final String? title;
  final String? message;
  final IconData icon;
  final Widget? actionWidget;

  MessageDisplay(
      String buttonTitle,
      VoidCallback onPressed, {super.key,
        required this.title,
        required this.message,
        required this.icon,
      }) : actionWidget = _MessageActionButton(
    buttonTitle: buttonTitle,
    onPressed: onPressed,
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final String displayTitle = title ?? localization.emptyMessage;
    final String displayMessage = message ?? localization.emptySubMessage;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
            child: Icon(
              icon,
              size: 30,
              color: Colors.grey[500],
            ),
          ),
          Text(
            displayTitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500], fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Text(
            displayMessage,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),
          actionWidget != null
              ? Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: actionWidget,
          )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class _MessageActionButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPressed;

  const _MessageActionButton({
    required this.buttonTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(buttonTitle),
    );
  }
}