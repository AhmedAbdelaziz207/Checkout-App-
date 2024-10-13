import 'dart:developer';

import 'package:checkout_app/features/checkout/presentation/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListview extends StatefulWidget {
  const PaymentMethodsListview({super.key});

  @override
  State<PaymentMethodsListview> createState() => _PaymentMethodsListviewState();
}

class _PaymentMethodsListviewState extends State<PaymentMethodsListview> {
  int selectedIndex = 0;
  final List<String> paymentMethods = [
    "assets/images/credit_card.png",
    "assets/images/paypal.png",
    "assets/images/apple_pay.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
                log(selectedIndex.toString());
              });
            },
            child: PaymentMethodItem(isSelected: selectedIndex == index, imagePath: paymentMethods[index],),
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
      ),
    );
  }
}
