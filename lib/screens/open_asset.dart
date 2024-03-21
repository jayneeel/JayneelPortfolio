import 'package:flutter/material.dart';

class OpenAsset extends StatelessWidget {
  const OpenAsset({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}
