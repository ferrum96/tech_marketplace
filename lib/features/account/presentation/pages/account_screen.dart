import 'package:flutter/material.dart';
import 'package:tech_marketplace/components/app_colors.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainBackground,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text("Account"),
      ),
    );
  }
}
