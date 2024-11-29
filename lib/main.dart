import 'package:bookmenow/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Bookmenow',
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: const HomePage(),
  ));
}

