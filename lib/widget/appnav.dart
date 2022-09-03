import 'package:flutter/material.dart';

AppBar CustomAppBar(context) {
  return AppBar(
    toolbarHeight: 70.0,
    backgroundColor: const Color.fromRGBO(236, 32, 69, 1),
    title: TextButton(
      onPressed: () {
        Navigator.popAndPushNamed(context, '/pages');
      },
      child: const Image(
        image: AssetImage('assets/srt.png'),
        height: 70.0,
        width: 100.0,
      ),
    ),
  );
}
