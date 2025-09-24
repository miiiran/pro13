import 'package:flutter/material.dart';
import 'package:pro11/views/add_address/view.dart';
import 'package:pro11/views/calculator/view.dart';
import 'package:pro11/views/create_new_password/view.dart';
import 'package:pro11/views/hello_world/view.dart';
import 'package:pro11/views/login/view.dart';
import 'package:pro11/views/on_boarding/view.dart';
import 'package:pro11/views/play/view.dart';
import 'package:pro11/views/profile/view.dart';
import 'package:pro11/views/sing_up/view.dart';
import 'package:pro11/views/splash/view.dart';
import 'package:pro11/views/splash_2/view.dart';
import 'package:pro11/views/suits/view.dart';
import 'package:pro11/views/suits_app/view.dart';
import 'package:pro11/views/test/view.dart';
import 'package:pro11/views/verify_otp/view.dart';
import 'package:pro11/views/welcome/view.dart';
import 'package:pro11/wishlist/view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF4F5F7),
appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent
),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: TextStyle(color: Color(0xffA1ABB0)),
          fillColor: const Color(0xFFF9FAFB),
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),

        borderSide: const BorderSide(
          color: Color(0xffE5E7EB),
        ),
      ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(
            color: Color(0xffE5E7EB),
          ),
        ),

        ),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          error: Colors.red,
          primary: Color(0xffDD856B),
          onPrimary: Colors.white,
        secondary: Colors.limeAccent,
         onSecondary: Colors.limeAccent,
          onError: Colors.red,
          surface: Colors.white,
        onSurface: Colors.black,
        ),
      ),
      home: PageView(
        scrollDirection: Axis.vertical,
        children: [
          WishlistView(),
          OnBoardingView(),
          Splash2View(),
          SplashView(),
          SuitsAppView(),
          LoginView(),
          VerifyOTPView(),
          AddAddressView(),
          ProfileView(),
          PlayView(),
          SingUpView(),
          HelloWorldView(),
          CalculatorView(),
          CreateNewPasswordView(),
        ],
      ),
      // home: WishlistView(),
      //    home: TestView(),
      //  home: ProfileView(),
      //  home: CreateNewPasswordView(),
      //  home: LoginView(),
      // home: WelcomeView(),
      // home: SuiteView(),
      // home: SingUpView(),
    ),
  );
}

