import 'package:flutter/material.dart';

// -- Extension
import 'package:foodora/extensions/screen_size/screen_size.dart';

// -- External Packages
import 'package:flutter_svg/svg.dart';
import 'package:foodora/widgets/home_screen_widgets/custom_theme_button.dart';
import 'package:google_fonts/google_fonts.dart';


class CartWidget extends StatelessWidget {

  /// [CartWidget] represents the food cart item for each type of food displayed on the Home screen.
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 300,
              width: context.getWidth(),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.all(32),
                      child: Text(
                        'foodora',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Noting in your cart',
                    style: GoogleFonts.poppins(fontSize: 24),
                  ),

                  SizedBox(height: 32),

                  CustomThemeButton()
                ],
              ),
            );
          },
        );
      },
      icon: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(255, 0, 54, 0.24),
              blurRadius: 5,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: SvgPicture.asset(
          fit: BoxFit.none,
          'assets/home_screen/home_screen_savgs/Union 1.svg',
        ),
      ),
    );
  }
}
