import 'package:flutter/material.dart';
import '../widgets/profileItem.dart';
import 'contactUsScreen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "X",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Color.fromARGB(255, 4, 4, 4),
              Color.fromARGB(255, 12, 12, 12),
              Color.fromARGB(255, 14, 14, 14),
              Color.fromARGB(255, 10, 10, 10),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            ProfileItem(
              avatar: 'assets/images/1.jpeg',
              name: "Eren Günal",
              nameColor: Colors.white,
            ),
            Divider(color: Colors.white, height: 1),
            SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Merhaba, Adım Eren, 20 yaşında İstanbul'da yaşıyorum. İstinye Üniversitesi'nde Bilgisayar Programcılığı okuyorum. Aynı zamanda Entera Teknoloji şirketinde çalışıyorum. Yazılım test ve destek bölümlerinde görev almaktayım.",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsScreen()),
                );
              },
              icon: Icon(Icons.email, color: Colors.black),
              label: Text("Contact Us", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Version: 4.7.2",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
