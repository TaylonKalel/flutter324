import 'package:flutter/material.dart';
import 'package:flutter324/widget/text.widget.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: const TextWidget(
        text: "MOBILE",
      ),
    );
  }
}
