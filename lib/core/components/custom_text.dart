import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText {
  static Widget nameSurnameText(
      {required String name, required String surname}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text("$name $surname"),
    );
  }

  static Widget userInformation({required String lorem}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(lorem),
    );
  }
}
