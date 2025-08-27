import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = "Banyu Ganteng.";
  final String email = "banyu@gmail.com";
  final String phone = "+62 812-3456-7890";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          // Foto profil
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          const SizedBox(height: 16),

          // Nama
          const Text(
            "Banyu Bening",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 24),

          // Info tambahan (Email, Kelas, Absen)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text("Email"),
                  subtitle: Text("banyu@gmail.com"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.school, color: Colors.green),
                  title: Text("Kelas"),
                  subtitle: Text("XI PPLG 2"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.confirmation_number,
                    color: Colors.orange,
                  ),
                  title: Text("Absen"),
                  subtitle: Text("10"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
