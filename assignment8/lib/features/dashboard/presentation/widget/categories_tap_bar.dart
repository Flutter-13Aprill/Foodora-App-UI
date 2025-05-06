import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/dashboard/data/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesTapBar extends StatefulWidget {
  const CategoriesTapBar({super.key});

  @override
  State<CategoriesTapBar> createState() => _CategoriesTapBarState();
}

class _CategoriesTapBarState extends State<CategoriesTapBar> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categoriesData.length,
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesData.length,
          itemBuilder: (context, index) {
            bool isSelected = selected == index;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 130,
                decoration: BoxDecoration(
                  color: AppPalette.whiteColor,
                  borderRadius: BorderRadius.circular(23),
                  border: Border.all(
                    color:
                        isSelected ? AppPalette.redColor : AppPalette.hintColor,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: TabBar(
                    // controller:selected,
                    // onTap:onTap,
                    dividerHeight: 0,
                    indicatorColor: AppPalette.whiteColor,
                    labelColor:
                        isSelected ? AppPalette.redColor : AppPalette.hintColor,

                    tabs: [
                      Tab(
                        icon: SvgPicture.asset(
                          categoriesData[index].svg,
                          width: 30,
                          height: 30,
                        ),
                        text: categoriesData[index].item,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
