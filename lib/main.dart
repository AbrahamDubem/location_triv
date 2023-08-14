import 'package:flutter/material.dart';
import 'package:location_triv/config/app_router.dart';
import 'package:location_triv/location/location_screen.dart';
import 'package:location_triv/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LocationScreen.routeName,
    );
  }
}
