import 'package:flutter/material.dart';
import 'package:flutter324/widget/button.widget.dart';
import 'package:flutter324/widget/text.widget.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          const TextWidget(
            text: "MOBILE",
          ),
          ButtonWidget(
              onPressed: () {}, child: const TextWidget(text: "Botão"))
        ],
      ),
    );
  }
}
