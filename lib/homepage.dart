import 'package:flutter/material.dart';
import 'package:flutter_application_1/topbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
