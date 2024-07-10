import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meals_ui/homepage/widgets/app_bar.dart';
import 'package:meals_ui/homepage/widgets/category_section.dart';
import 'package:meals_ui/homepage/widgets/recommend_diet_section.dart';
import 'package:meals_ui/homepage/widgets/searchbar.dart';
import 'package:meals_ui/models/category_model.dart';
import 'package:meals_ui/models/recommended_diet_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<RecommendedDietModel> diets = [];

  getMealInfo() {
    categories = CategoryModel.getCategories();
    diets = RecommendedDietModel.getRecommendedDiets();
  }

  @override
  void initState() {
    getMealInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(),
      body: ListView(
        children: [
          customSearchBar(),
          const SizedBox(height: 40),
          categoriesSection(categories),
          const SizedBox(height: 40),
          recommendDietSection(diets)
        ],
      ),
    );
  }
}
