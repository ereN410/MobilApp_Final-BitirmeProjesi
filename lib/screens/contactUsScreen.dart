import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key});

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
        elevation: 0, // App bar elevation removed
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Color.fromARGB(255, 18, 18, 18),
              Color.fromARGB(255, 10, 10, 10),
              Color.fromARGB(255, 7, 8, 8),
              Color.fromARGB(255, 10, 10, 10),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Destek",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Destek için aşağıdaki bilgilerle bize ulaşabilirsiniz.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 20),
              ContactInfoCard(
                icon: Icons.mail,
                label: "Mail",
                info: "x@gmail.com",
              ),
              ContactInfoCard(
                icon: Icons.phone,
                label: "Phone",
                info: "021235588453",
              ),
              ContactInfoCard(
                icon: Icons.location_on,
                label: "Address",
                info: "Şeref Sk. No:16 İstanbul/Ataşehir",
              ),
              ContactInfoCard(
                icon: Icons.business,
                label: "Company",
                info: "X Teknoloji A.S",
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(140, 50),
                  primary: Colors.white,
                ),
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.black),
                    SizedBox(width: 8),
                    Text("Go Back", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Version: 4.7.2",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String info;

  const ContactInfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(color: Colors.white)),
              Text(info,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
