import 'package:flutter/material.dart';
import 'package:my_cv_app/controllers/my_page_controller.dart';
import 'package:my_cv_app/ui/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => MyPageController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: const Color(0xff000072),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
