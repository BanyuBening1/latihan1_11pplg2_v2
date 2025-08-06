import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2_v2/components/Button.dart';
import 'package:latihan1_11pplg2_v2/components/Gender.dart';
import 'package:latihan1_11pplg2_v2/components/TextField.dart';
import 'package:latihan1_11pplg2_v2/components/Snackbar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedGender;

  void onGenderChanged(String? value) {
    setState(() {
      selectedGender = value;
    });
  }

  void handleRegister() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        selectedGender == null) {
      CustomSnackBar(
        context,
        "Semua wajib diisi!",
        backgroundColor: Colors.red,
      );
    } else {
      CustomSnackBar(
        context,
        "Register berhasil untuk $name ($selectedGender)",
        backgroundColor: Colors.green,
      );

      // Tambahkan logika simpan/redirect jika perlu
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Page')),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Please Register Below',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 250, 99, 54),
                ),
              ),

              ReuseableTextField(label: "Name", controller: nameController),
              ReuseableTextField(label: "Email", controller: emailController),
              ReuseableTextField(
                label: "Password",
                controller: passwordController,
                isPassword: true,
              ),

              Gender(
                selectedGender: selectedGender,
                onChanged: onGenderChanged,
              ),

              const SizedBox(height: 10),

              ReuseableButton(
                text: "Register",
                onPressed: handleRegister,
                bordercolor: Colors.deepOrange,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
