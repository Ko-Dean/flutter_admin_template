import 'package:butler_admin/common/constants.dart';
import 'package:butler_admin/screens/home/home_screen.dart';
import 'package:butler_admin/screens/user/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/user': (context) => const UserScreen(),
      },
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: true,
      title: 'Admin Panel',
      theme: ThemeData.dark().copyWith(
        cardColor: Style.bgColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Style.bgColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Style.bgColor,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Style.primaryColor,
          selectionColor: Style.primaryColor,
          selectionHandleColor: Style.primaryColor,
        ),
        canvasColor: Style.secondaryColor,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Style.bgColor,
          filled: true,
        ),
      ),
    );
  }
}
