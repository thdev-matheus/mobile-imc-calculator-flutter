import 'package:flutter/material.dart';
import 'dart:math' as math;

class Imc {
  final String _id = UniqueKey().toString();
  final String _day =
      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
  final String _hour = "${DateTime.now().hour}h${DateTime.now().minute}";

  late double _weight;
  late double _height;
  late double _imc;

  void setWeight({required double weight}) => _weight = weight;

  void setHeight({required double height}) => _height = height;

  void setImc() {
    double imc = _weight / (math.pow(_height, 2));
    String fixedImc = imc.toStringAsFixed(1);
    _imc = double.parse(fixedImc);
  }

  Map<String, dynamic> getData() => {
        "id": _id,
        "day": _day,
        "hour": _hour,
        "weight": _weight,
        "height": _height,
        "imc": _imc,
      };

  Imc({required double weight, required double height}) {
    _weight = weight;
    _height = height;
    setImc();
  }
}
