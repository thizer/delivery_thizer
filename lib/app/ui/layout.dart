import 'package:flutter/material.dart';

class Layout {
  //

  static Widget render({
    required Widget content,
    Widget? fab,
  }) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: content,
      ),
      floatingActionButton: fab,
    );
  }
}
