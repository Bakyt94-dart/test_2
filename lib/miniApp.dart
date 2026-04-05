import 'package:flutter/material.dart';
import 'catalogScreen.dart';

class MiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: CatalogScreen(),
    );
  }
}
