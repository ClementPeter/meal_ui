import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meals_ui/models/category_model.dart';

Column categoriesSection(List<CategoryModel> categoriesContents) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 15),
      SizedBox(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesContents.length,
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              decoration: BoxDecoration(
                color: categoriesContents[index].boxColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(children: [
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      categoriesContents[index].iconPath,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  categoriesContents[index].name,
                ),
              ]),
            );
          },
        ),
      )
    ],
  );
}
