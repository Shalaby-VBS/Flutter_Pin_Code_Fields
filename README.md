# <div align="center">🔢 Flutter Pin Code Fields 🔢</div>

## 🚀 Getting Started

- A simple and customizable Flutter code for implementing pin code fields without external dependencies. This Repo provides an easy way to integrate a pin code input field into your Flutter application, allowing users to enter secure PINs or passcodes.

## 🎲 Features

- **Lightweight and Dependency-Free:** This package is designed to be minimalistic and does not have any external dependencies. It keeps your project clean and avoids potential conflicts with other packages.

- **Customizable Appearance:** Easily customize the appearance of the pin code field to match the design of your app. Adjust the colors, sizes, and shapes of the pin code elements to create a seamless user experience.

- **Secure Input:** Enhance the security of PIN entry by obscuring the entered digits. You can configure the package to display asterisks or circles instead of the actual digits, providing an additional layer of privacy.

- **Input Validation:** Define the length of the PIN code and implement validation rules to ensure users enter the correct number of digits. Customize error messages for invalid inputs.

- **Input Callbacks:** Receive callbacks for various pin code events, such as completion or changes in the entered digits. Use these callbacks to trigger specific actions in your application logic.

## ⚙️ Customization

Customize the appearance and behavior of the pin code field according to your requirements:

```dart
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
```

## 📱 UI

![PinCodeFields](https://github.com/Shalaby-VBS/Flutter_Pin_Code_Fields/assets/149938388/7344196f-f6b9-4e58-8456-fb820ebb19b4)

## 🛠 Dependencies

- Haven't any Dependencies 🚫

## 🚨 Contributing

- Contributions are welcome 💜
- If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

## 💳 License

- This package is distributed under the MIT License. Feel free to use and modify it according to your project requirements.

## 🤝 Contact With Me

<div align="left">
  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-shalaby-21196521b/) 
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/sh4l4by/)
</div>

## 💖 Support

- If you find this tutorial useful or learned something from this code, consider show some ❤️ by starring this repo.
