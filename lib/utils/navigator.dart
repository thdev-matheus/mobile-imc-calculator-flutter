import 'package:flutter/material.dart';

void navigator({
  required BuildContext context,
  required String path,
  bool remove = false,
}) {
  remove
      ? Navigator.of(context).pushNamedAndRemoveUntil(path, (route) => false)
      : Navigator.of(context).pushNamed(path);
}
