import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isSelected,
    required this.imagePath,
  });

  final bool isSelected;

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 105,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: isSelected ? Colors.green : Colors.grey,
                width: 1.5,
              )),
         ),
      duration: const Duration(milliseconds: 200),
      child: Image(
        image: AssetImage(
          imagePath,
        ),
        height: 19,
        width: 75,
      ),
    );
  }
}
