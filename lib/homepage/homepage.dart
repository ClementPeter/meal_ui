import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meals_ui/homepage/widgets/app_bar.dart';
import 'package:meals_ui/homepage/widgets/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: customSearchBar(),
    );
  }
}
