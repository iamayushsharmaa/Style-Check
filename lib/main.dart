import 'package:flutter/material.dart';

import 'conifg/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Abel',
      ),
      routerConfig: createRouter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
