import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        color: CupertinoColors.activeBlue,
        child: const Text('Cupertino Button'),
        onPressed: () {
          print('Cupertino button pressed');
        },
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Text('Material Button'),
        onPressed: () {
          print('Material button pressed');
        },
      );
    }
  }
}
