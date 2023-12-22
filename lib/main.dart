import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mouse_app/screens/landing_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) =>runApp(const MyApp()) );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LandingScreen(),
    );
  }
}
