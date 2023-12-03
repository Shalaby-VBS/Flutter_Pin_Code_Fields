import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/pin_code_fields_form.dart';

class PinCodeFieldsScreen extends StatelessWidget {
  const PinCodeFieldsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController firstPinCodeController =
        TextEditingController();
    final TextEditingController secondPinCodeController =
        TextEditingController();
    final TextEditingController thirdPinCodeController =
        TextEditingController();
    final TextEditingController fourthPinCodeController =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Pin Code Fields')),
      body: Center(
        child: Column(
          children: [
            PinCodeFieldsForm(
              formKey: formKey,
              firstPinCodeController: firstPinCodeController,
              secondPinCodeController: secondPinCodeController,
              thirdPinCodeController: thirdPinCodeController,
              fourthPinCodeController: fourthPinCodeController,
            ),
            const SizedBox(height: 20),
            _buildSubmitButton(
              context,
              firstPinCodeController,
              secondPinCodeController,
              thirdPinCodeController,
              fourthPinCodeController,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildSubmitButton(
    BuildContext context,
    firstPinCodeController,
    secondPinCodeController,
    thirdPinCodeController,
    fourthPinCodeController,
  ) {
    return ElevatedButton(
      onPressed: () {
        final pinCode = firstPinCodeController.text +
            secondPinCodeController.text +
            thirdPinCodeController.text +
            fourthPinCodeController.text;
        if (pinCode.length == 4) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Pin Code: $pinCode'),
              duration: const Duration(seconds: 3),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please fill in all fields'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
            ),
          );
        }
      },
      child: const Text('Submit'),
    );
  }
}
