import 'package:flutter/material.dart';
import 'package:navigation_app/screens/aboutUsScreen.dart';
import 'package:navigation_app/screens/ChatsScreen.dart'; // Eklenen satır
import 'package:navigation_app/screens/contactUsScreen.dart';
import 'package:navigation_app/screens/homeScreen.dart';
import 'package:navigation_app/screens/loginScreen.dart';
import 'package:navigation_app/screens/premiumScreen.dart';
import 'package:navigation_app/screens/profileScreen.dart';
import 'package:navigation_app/screens/registerScreen.dart';
import 'package:navigation_app/screens/settingsScreen.dart';
import 'package:navigation_app/screens/shopScreen.dart';
import 'package:navigation_app/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/about': (context) => AboutUsScreen(),
        '/contact': (context) => ContactUsScreen(),
        '/shop': (context) => ShopScreen(),
        '/premium': (context) => PremiumScreen(),
        '/chats': (context) => ChatsScreen(),
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 126, 117, 141)),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
