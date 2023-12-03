import 'package:flutter/material.dart';

class PinCodeFieldsForm extends StatelessWidget {
  final Key? formKey;
  final TextEditingController? firstPinCodeController;
  final TextEditingController? secondPinCodeController;
  final TextEditingController? thirdPinCodeController;
  final TextEditingController? fourthPinCodeController;
  const PinCodeFieldsForm({
    super.key,
    this.formKey,
    required this.firstPinCodeController,
    required this.secondPinCodeController,
    required this.thirdPinCodeController,
    required this.fourthPinCodeController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSinglePinCodeField(context, firstPinCodeController),
          _buildFieldsSpacer(context),
          _buildSinglePinCodeField(context, secondPinCodeController),
          _buildFieldsSpacer(context),
          _buildSinglePinCodeField(context, thirdPinCodeController),
          _buildFieldsSpacer(context),
          _buildSinglePinCodeField(context, fourthPinCodeController),
        ],
      ),
    );
  }

  Widget _buildSinglePinCodeField(
      BuildContext context, TextEditingController? pinCodeController) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.14,
      child: TextFormField(
        controller: pinCodeController,
        autofocus: true,
        cursorRadius: const Radius.circular(12),
        onChanged: (value) {
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
        cursorOpacityAnimates: true,
        cursorWidth: 2.4,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          counterText: '',
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.deepPurple, width: 2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  SizedBox _buildFieldsSpacer(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.04);
  }
}
