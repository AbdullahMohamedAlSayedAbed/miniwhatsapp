import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miniwhatsapp/firebase_options.dart';

import 'Features/spleash/presentation/views/splash_view.dart';

void main() async{
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
      darkTheme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
          ),
        primarySwatch: Colors.green,
      ),
      themeMode: ThemeMode.dark,
      home: const SplashView(),
    );
  }
}
