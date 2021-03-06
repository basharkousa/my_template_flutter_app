import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RateModel{
  String id = "";
  int value = 0;
  bool selected = false;
  Color color = Colors.white;
  Color selectedColor = Colors.white;
  String description = '';

  RateModel({this.id, this.value, this.selected,this.color,this.selectedColor});

  @override
  String toString() {
    return 'Rate{id: $id, value: $value, selected: $selected}';
  }

}