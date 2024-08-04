import 'package:flutter/material.dart';
import 'package:note_app/views/home_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const HomeView(),
};
