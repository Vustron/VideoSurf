import 'package:VideoSurf/cores/services/api/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/material.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 25),
                child: ShadImage.square(
                  'assets/icons/logo.svg',
                  fit: BoxFit.fitHeight,
                  size: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome to ",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "VideoSurf",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(128, 70, 253, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Your ultimate platform for video streaming and sharing.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              // Adjusted padding to prevent overflow
              Padding(
                padding: const EdgeInsets.only(bottom: 160),
                child: ShadButton.outline(
                  onPressed: () async {
                    await ref.read(authServiceProvider).signInWithGoogle();
                  },
                  text: const Text('Sign-In with Google'),
                  icon: SizedBox(
                    width: 30,
                    height: 25,
                    child: Brand(Brands.google),
                  ),
                  size: ShadButtonSize.lg,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
