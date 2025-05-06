import 'package:assignment8/core/text/app_text.dart';
import 'package:assignment8/core/text/text_styles.dart';
import 'package:assignment8/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

void modalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    backgroundColor: AppPalette.whiteColor,
    builder: (context) {
      return SizedBox(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(child: Text("Cart Summary", style: TextStyles.poppins20)),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppPalette.borderColor),
                      image: const DecorationImage(
                        image: AssetImage("asset/image/Zinger.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppText.zinger, style: TextStyles.poppinsBold),
                        const SizedBox(height: 5),
                        Text(
                          "\$12",
                          style: TextStyles.poppins400.copyWith(
                            color: AppPalette.hintColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.delete_outline, color: AppPalette.redColor),
                ],
              ),
              const SizedBox(height: 20),
              Divider(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyles.poppinsBold),
                  Text("\$12", style: TextStyles.poppinsBold),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},

                  child: Text(
                    "Checkout",
                    style: TextStyles.poppinsBold.copyWith(
                      color: AppPalette.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
