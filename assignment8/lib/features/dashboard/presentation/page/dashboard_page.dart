import 'package:assignment8/core/text/app_text.dart';
import 'package:assignment8/core/text/text_styles.dart';
import 'package:assignment8/features/dashboard/presentation/widget/categories_tap_bar.dart';
import 'package:assignment8/features/dashboard/presentation/widget/custom_page_view.dart';
import 'package:assignment8/features/dashboard/presentation/widget/floating_button.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("asset/image/personal.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38),
            //Text
            Text(AppText.choose, style: TextStyles.poppins18),
            SizedBox(height: 10),
            Text(AppText.food, style: TextStyles.poppin18),
            SizedBox(height: 10),
            //SearchBar
            SearchBar(hintText: AppText.search),
            SizedBox(height: 39),
            Text(AppText.categories, style: TextStyles.poppins600),
            SizedBox(height: 24),
            Flexible(child: CategoriesTapBar()),
            SizedBox(height: 70),
            Text(AppText.burgers, style: TextStyles.poppins600),

            CustomPageView(),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(),
    );
  }
}
