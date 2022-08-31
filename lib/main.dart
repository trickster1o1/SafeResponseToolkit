import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/pages/home.dart';
import 'package:safe_response_toolkit/pages/page.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Home(),
      '/pages': (context) => const PageList(),
    }));
