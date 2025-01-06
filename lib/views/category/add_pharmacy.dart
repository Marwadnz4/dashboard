import 'package:dashboad/views/category/widgets/add_pharmacy_form.dart';
import 'package:dashboad/widgets/app_button.dart';
import 'package:flutter/material.dart';

class AddPharmacyScreen extends StatelessWidget {
  const AddPharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Add pharmacy',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AddPharmacyForm(),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppButton(
                      buttonText: 'Cancel',
                      width: 240,
                      hasBorder: true,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20),
                    AppButton(
                      buttonText: 'Add',
                      width: 240,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
