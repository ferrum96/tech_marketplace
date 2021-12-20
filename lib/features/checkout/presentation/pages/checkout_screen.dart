import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBackground,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text("Checkout"),
      ),
    );
  }
}
