import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Location screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
        ),
      ),
    );
  }
}
