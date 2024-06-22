import "package:VideoSurf/cores/screens/loader.dart";
import "package:VideoSurf/cores/services/firebase_options.dart";
import "package:VideoSurf/cores/screens/auth/login.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:shadcn_ui/shadcn_ui.dart";
import "package:flutter/material.dart";

void main() async {
  // init flutter widget binding
  WidgetsFlutterBinding.ensureInitialized();
  // init firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) {
    // run app
    runApp(const ProviderScope(
      child: App(),
    ));
  });
}

class App extends ConsumerWidget {
  // init key
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShadApp.material(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const LoginPage();
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Loader();
              }
              return const Scaffold();
            }));
  }
}
