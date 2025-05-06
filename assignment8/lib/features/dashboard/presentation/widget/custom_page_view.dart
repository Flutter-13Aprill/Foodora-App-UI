import 'package:assignment8/core/text/text_styles.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/dashboard/data/model/burgers_model.dart';
import 'package:assignment8/features/dashboard/presentation/widget/custom_show_dialog.dart';
import 'package:assignment8/features/dashboard/presentation/widget/custom_smooth_page.dart';
import 'package:assignment8/features/dashboard/presentation/widget/rate_widget.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final pageController = PageController(viewportFraction: 0.6);
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 249,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (int index) {
              setState(() {
                selected = index;
              });
            },
            scrollDirection: Axis.horizontal,
            itemCount: burgerDetails.length,
            itemBuilder: (BuildContext context, int index) {
              bool isSlected = selected == index;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder:
                          (context) =>
                              BurgerDialog(burger: burgerDetails[index]),
                    );
                  },

                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color:
                          isSlected
                              ? AppPalette.redColor
                              : AppPalette.whiteColor,
                      gradient:
                          isSlected
                              ? LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  AppPalette.redColor,
                                  AppPalette.redColor2,
                                ],
                              )
                              : null,
                      boxShadow: [
                        BoxShadow(
                          color: AppPalette.blackColor.withValues(alpha: 0.2),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(burgerDetails[index].image),
                          Text(
                            burgerDetails[index].type,
                            style: TextStyles.poppins600.copyWith(
                              color:
                                  isSlected
                                      ? AppPalette.whiteColor
                                      : AppPalette.blackColor,
                            ),
                          ),
                          RateWidget(initialRating: burgerDetails[index].rate),
                          Text(
                            burgerDetails[index].price,
                            style: TextStyles.poppin24.copyWith(
                              color:
                                  isSlected
                                      ? AppPalette.whiteColor
                                      : AppPalette.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 40),
        CustomSmoothPage(controller: pageController),
      ],
    );
  }
}
