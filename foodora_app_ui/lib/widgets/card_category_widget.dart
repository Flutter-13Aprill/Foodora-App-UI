import 'package:flutter/material.dart';
import 'package:foodora_app_ui/models/category_model.dart';

class CardCategoryWidget extends StatefulWidget {
  const CardCategoryWidget({
    super.key,
    required this.category,
    required this.onCategoryTap,
  });
  final CategoryModel category;
  final Function(String) onCategoryTap;

  @override
  State<CardCategoryWidget> createState() => _CardCategoryWidgetState();
}

class _CardCategoryWidgetState extends State<CardCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onCategoryTap(widget.category.title);

          widget.category.selected = !widget.category.selected;
        });
      },
      child: Container(
        width: 110,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),

          border: Border.all(
            width: 1,
            // if i select category border color will change to red
            color:
                widget.category.selected
                    ? Color.fromRGBO(255, 0, 54, 0.24)
                    : Color.fromRGBO(234, 234, 245, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.category.imagePath,

              // if i select category image color will change to red
              color:
                  widget.category.selected
                      ? Color.fromRGBO(255, 0, 54, 0.24)
                      : Color.fromRGBO(234, 234, 245, 1),
            ),
            Text(widget.category.title, style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
