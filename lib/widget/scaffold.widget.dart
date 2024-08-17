import 'package:flutter/material.dart';
import 'package:flutter324/components/models/responsive.modal.dart';
import 'package:flutter324/components/responsive.dart';

class ScaffoldWidget extends StatelessWidget {
  final AppBar? appBar;
  final Widget body;
  const ScaffoldWidget({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return ResponsiveComponent(
        responsiveLayout: ResponsiveModel(
            mobilebWidget: _mobile(),
            tableWidget: _mobile(),
            webWidget: _web()));
  }

  Widget _mobile() {
    return SafeArea(
      child: Scaffold(
        appBar: appBar ?? AppBar(),
        body: body,
      ),
    );
  }

  Widget _web() {
    return SafeArea(
      child: Scaffold(
        appBar: appBar ?? AppBar(),
        body: body,
      ),
    );
  }
}
