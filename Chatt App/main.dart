import 'package:flutter/material.dart';
import 'package:chatt/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return new  MaterialApp(home: new HomePage());
  }
}


