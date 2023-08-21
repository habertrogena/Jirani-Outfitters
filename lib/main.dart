import 'package:flutter/material.dart';
import 'package:jirani_mobile_app/src/features/signup/view/signup.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jirani Outfitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUp(),
    );
  }
}
