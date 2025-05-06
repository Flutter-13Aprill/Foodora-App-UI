import 'package:assignment8/core/theme/app_palette.dart';
import 'package:assignment8/features/dashboard/presentation/widget/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        modalBottomSheet(context);
      },
      backgroundColor: AppPalette.redColor,
      shape: CircleBorder(),
      child: SvgPicture.asset("asset/icon/Union 1.svg"),
    );
  }
}
