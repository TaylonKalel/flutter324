import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter324/components/models/responsive.modal.dart';
import 'package:flutter324/components/responsive.component.dart';

class ScaffoldWidget extends StatelessWidget {
  final AppBar? appBar;
  final CupertinoNavigationBar? cupertinoNavigationBar;
  final Widget body;
  const ScaffoldWidget(
      {super.key,
      required this.body,
      this.appBar,
      this.cupertinoNavigationBar});

  @override
  Widget build(BuildContext context) {
    return ResponsiveComponent(
        responsiveLayout: ResponsiveModel(
            mobilebWidget: _mobile(),
            tableWidget: _mobile(),
            webWidget: _web()));
  }

  Widget _mobile() {
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      return CupertinoPageScaffold(
        navigationBar: cupertinoNavigationBar ?? const CupertinoNavigationBar(),
        child: body,
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: appBar ?? AppBar(),
          body: body,
        ),
      );
    }
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
