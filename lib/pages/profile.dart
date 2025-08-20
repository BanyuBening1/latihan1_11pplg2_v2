import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = "Banyu Ganteng.";
  final String email = "banyu@gmail.com";
  final String phone = "+62 812-3456-7890";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 20),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(email, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              Text(phone, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
