import 'package:flutter/material.dart';
import 'package:flutter324/components/models/responsive.modal.dart';
import 'package:flutter324/components/responsive.component.dart';
import 'package:flutter324/pages/home/home.mobile.widget.dart';
import 'package:flutter324/pages/home/home.web.widget.dart';
import 'package:flutter324/widget/scaffold.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: ResponsiveComponent(
          responsiveLayout: ResponsiveModel(
              mobilebWidget: const HomeMobileWidget(),
              tableWidget: const HomeMobileWidget(),
              webWidget: const HomeWebWidget())),
    );
  }
}
