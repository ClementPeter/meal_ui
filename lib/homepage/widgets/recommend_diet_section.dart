import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meals_ui/models/recommended_diet_model.dart';

Column recommendDietSection(List<RecommendedDietModel> diets) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommendation',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'for Diet',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
      SizedBox(
        height: 240,
        child: ListView.separated(
          itemCount: diets.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20, right: 20),
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          itemBuilder: (context, index) {
            return Container(
              width: 210,
              decoration: BoxDecoration(
                color: diets[index].boxColor!.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 15),
                  SvgPicture.asset(diets[index].iconPath!),
                  Column(
                    children: [
                      Text(
                        diets[index].name!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                        style: const TextStyle(
                          color: Color(0xff7B6F72),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('view button');
                    },
                    child: Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: diets[index].viewIsSelected!
                            ? LinearGradient(
                                colors: [
                                  diets[index].viewIsSelected!
                                      ? const Color(0xff9DCEFF)
                                      : Colors.transparent,
                                  diets[index].viewIsSelected!
                                      ? const Color(0xff92A3FD)
                                      : Colors.transparent
                                ],
                              )
                            : null,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          child: Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                  color: diets[index].viewIsSelected!
                                      ? Colors.white
                                      : const Color(0xffC58BF2),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )
    ],
  );
}
