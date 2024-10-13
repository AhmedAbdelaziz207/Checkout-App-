import 'package:checkout_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:checkout_app/features/checkout/presentation/widgets/payment_methods_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Details",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const PaymentMethodsListview(),
              const SizedBox(
                height: 12,
              ),
              CustomCreditCard(
                formKey: formKey,
                autoValidateMode: autoValidateMode,
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                  }
                },
                child: const Text(
                  "Pay",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
