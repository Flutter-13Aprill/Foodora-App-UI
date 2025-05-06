
import 'package:flutter/material.dart';
import 'package:foodora_app_ui/models/food_model.dart';
import 'package:foodora_app_ui/widgets/cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cart")),
        
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 4,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: cart.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartWidget(food: cart[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
