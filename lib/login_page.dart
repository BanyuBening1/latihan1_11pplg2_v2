import 'package:flutter/material.dart';
import 'package:latihan1_11pplg2_v2/components/Button.dart';
import 'package:latihan1_11pplg2_v2/components/TextField.dart';
import 'package:latihan1_11pplg2_v2/components/Snackbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "login status";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to our application',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 99, 54),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Please fill username and password below'),

            Center(
              child: Container(
                width: 100,
                child: Image.asset('assets/images/rotherdam.png'),
              ),
            ),

            ReuseableTextField(label: "Email", controller: emailController),

            ReuseableTextField(
              label: "Password",
              controller: passwordController,
              isPassword: true,
            ),

            ReuseableButton(
              text: "Login",
              onPressed: () {
                String email = "test";
                String password = "10";

                String inputEmail = emailController.text;
                String inputPassword = passwordController.text;

                if (inputEmail.isEmpty || inputPassword.isEmpty) {
                  showCustomSnackBar(
                    context,
                    "Email atau Password tidak boleh kosong!",
                    backgroundColor: Colors.red,
                  );
                } else if (inputEmail == email && inputPassword == password) {
                  showCustomSnackBar(
                    context,
                    "Anda berhasil login",
                    backgroundColor: Colors.lightGreen,
                  );
                  setState(() {
                    statusLogin = "sukses login";
                  });
                } else {
                  showCustomSnackBar(
                    context,
                    "Email atau Password salah!",
                    backgroundColor: Colors.red,
                  );
                  setState(() {
                    statusLogin = "gagal login";
                  });
                }
              },
              bordercolor: const Color.fromARGB(255, 250, 99, 54),
              textColor: const Color.fromARGB(255, 0, 0, 0),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Center(
                child: Container(
                  margin:  EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Register Here",
                    style: TextStyle(color: Colors.blue, fontSize: 13),
                  ),
                ),
              ),
            ),

            Text(statusLogin),
          ],
        ),
      ),
    );
  }
}
