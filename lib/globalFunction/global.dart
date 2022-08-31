import 'package:flutter/cupertino.dart';

BoxDecoration GlobalBg() {
  return const BoxDecoration(
      image: DecorationImage(
    image: AssetImage('assets/bg.png'),
    fit: BoxFit.cover,
  ));
}
