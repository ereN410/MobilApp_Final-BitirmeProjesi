import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Eklediğimiz kütüphane

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 247, 234, 234),
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of yellow
                Color.fromARGB(255, 6, 6, 6), // Dark color instead of red
                const Color.fromARGB(
                    255, 37, 36, 36), // Dark color instead of indigo
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of teal
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of yellow
                Color.fromARGB(255, 6, 6, 6), // Dark color instead of red
                const Color.fromARGB(
                    255, 37, 36, 36), // Dark color instead of indigo
                Color.fromARGB(255, 8, 8, 8), // Dark color instead of teal
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your mail..',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(
                        color: Colors.white), // Kullanıcı adı yazı rengi
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your password..',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white), // Şifre yazı rengi
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 8, 8, 8)),
                      ),
                      onPressed: () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setString('username', 'kullanici_adi');

                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
