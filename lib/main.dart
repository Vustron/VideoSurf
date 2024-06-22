import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:video_surf/cores/screens/home.dart";
import "package:flutter/material.dart";

void main() async {
  runApp(const App());
}

class App extends ConsumerWidget {
  // init key
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
