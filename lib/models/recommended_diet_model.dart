import 'package:flutter/material.dart';

class RecommendedDietModel {
  String? name;
  String? iconPath;
  String? level;
  String? duration;
  String? calorie;
  Color? boxColor;
  bool? viewIsSelected;

  RecommendedDietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<RecommendedDietModel> getRecommendedDiets() {
    List<RecommendedDietModel> recommendedDiets = [
      RecommendedDietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30mins',
        calorie: '180kCal',
        viewIsSelected: true,
        boxColor: const Color(0xff9DCEFF),
      ),
      RecommendedDietModel(
        name: 'Canai Bread',
        iconPath: 'assets/icons/canai-bread.svg',
        level: 'Easy',
        duration: '20mins',
        calorie: '230kCal',
        viewIsSelected: false,
        boxColor: const Color(0xffEEA4CE),
      )
    ];
    return recommendedDiets;
  }
}
