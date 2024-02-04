import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "Premium Application",
          style: TextStyle(color: Colors.white),
        ),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.4, 0.6, 0.9],
              colors: [
                const Color.fromARGB(255, 19, 19, 18),
                const Color.fromARGB(255, 17, 17, 17),
                const Color.fromARGB(255, 25, 25, 25),
                const Color.fromARGB(255, 10, 10, 10),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              const Color.fromARGB(255, 16, 16, 16),
              const Color.fromARGB(255, 14, 14, 14),
              const Color.fromARGB(255, 17, 17, 18),
              const Color.fromARGB(255, 6, 7, 7),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Premium Uygulama Özellikleri",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              "Premium Uygulama'yı satın aldığınızda tüm özel içeriklere erişme hakkına sahip olursunuz. Uygulamanın premium versiyonunu aşağıdan Buy butonu ile alabilirsiniz.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(140, 50),
                primary: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
              label: Text("Go Back", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(140, 50),
                primary: Colors.black,
              ),
              onPressed: () {
                // Burada premium satın alma işlemleri yapılabilir
              },
              icon: Icon(Icons.shopping_bag, color: Colors.white),
              label: Text("Buy", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text(
              "Version: 4.7.2",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
