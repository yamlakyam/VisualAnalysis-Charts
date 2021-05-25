import 'package:flutter/material.dart';

class PieData {
  List<Data> data = [
    Data('one', 25.0, Color(0xffe6e7f0), Color(0xff9592a1)),
    Data('two', 25.0, Color(0xff343351),Color(0xffe3e4e8)),
    Data('three', 25.0, Color(0xffffcfcd),Color(0xff645b6d)),
    Data('four', 25.0, Color(0xff5f5bf3),Color(0xffd4d6ea)),
  ];
}

class Data {
  String name;
  double value;
  Color color;
  Color txtColor;

  Data(this.name, this.value, this.color, this.txtColor);
}
