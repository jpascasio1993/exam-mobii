import 'package:flutter/material.dart';

abstract class AbstractStatelessWidget extends StatelessWidget {
  const AbstractStatelessWidget({Key? key}): super(key: key);

  @mustCallSuper
  @override
  Widget build(BuildContext context){
    return const SizedBox.shrink();
  }
}