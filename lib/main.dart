import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/pages/home.dart';
import 'package:safe_response_toolkit/pages/page.dart';
import 'package:safe_response_toolkit/pages/detail.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/pages': (context) => const PageList(),
      '/response': (context) =>
          const PageDetail(title: '', list: {'content': '', 'lists': []}),
    }));
