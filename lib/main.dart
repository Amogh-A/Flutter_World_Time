import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Loading.dart';
import 'pages/List.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(),
    '/list' : (context) => List(),
    '/loading' : (context) => Loading(),

  },
));