import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveWidget extends StatelessWidget {
  ResponsiveWidget({Key? key, this.landscape, this.portrait}) : super(key: key);

  Widget? portrait;
  Widget? landscape;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<700) {
        return portrait!;
      } else {
        return landscape!;
      }
    });
  }
}
