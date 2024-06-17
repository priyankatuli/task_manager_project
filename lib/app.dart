
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/auth/splash_screen.dart';
import 'package:task_manager_project/ui/utility/app_color.dart';

class TaskManagerApp extends StatelessWidget{
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: lightThemeData()

    );
  }

  ThemeData lightThemeData() {

    return ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
                color: Colors.grey.shade400
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
          titleSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              letterSpacing: 0.5
          ),
        ),

        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w600
                )
            )
        )

    );
  }

}