import 'package:flutter/material.dart';
import 'package:mantenatal/OnBoarding%20Screen/onboarding_screen.dart';
import 'package:mantenatal/Theme/theme_model.dart';
import 'package:mantenatal/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Theme/app_theme.dart';

int? initScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeNotifier(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, _) {
        return MaterialApp(
          theme: notifier.darkTheme ? darkTheme : lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
          routes: {
            '/': (context) => const HomeScreen(),
            'first': (context) => const OnboardingScreen(),
            // 'childinfo': (context) => const HomeScreen(),
            // 'cycleduration': (context) => const CycleDuration(),
            // 'calculateduration': (context) => const CalculateDuration(),
            // 'duescreen': (context) => const DueDateScreen()
          },
        );
      },
    );
  }
}
