import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miniwhatsapp/core/utils/app_color.dart';
import 'package:miniwhatsapp/firebase_options.dart';

import 'Features/spleash/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const SplashView(),
    );
  }
}
