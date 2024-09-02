import 'package:flutter/material.dart';
import 'package:miniwhatsapp/core/utils/app_color.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Welcome to Whatsapp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/images/image splashpng.png'),
          Column(
            children: [
              const Text(
                'Read our Privacy Policy, Tap "Agree and continue to accept the Terms of Service.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff4B5954)),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, left: 30, top: 20),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  color: AppColor.primaryColor,
                  onPressed: () {},
                  child: const Text(
                    'AGREE AND CONTINUE',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
