import 'package:flutter/material.dart';
import 'package:flutter324/pages/home/home.page.dart';
import 'package:flutter324/pages/profile/profile.page.dart';

var router = (BuildContext context) => {
      '/': (context) => const HomePage(),
      '/profile': (context) => const ProfilePage(),
    };
