import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter324/widget/text.widget.dart';

class HomeWebWidget extends StatelessWidget {
  const HomeWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          const TextWidget(
            text: "WEB",
          ),
          CupertinoButton(
              onPressed: () {}, child: const TextWidget(text: "Botão"))
        ],
      ),
    );
  }
}
