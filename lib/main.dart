import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_input_form_validation/languages.dart';
import 'package:user_input_form_validation/pagefive.dart';
import 'package:user_input_form_validation/pagefour.dart';
import 'package:user_input_form_validation/pageone.dart';
import 'package:user_input_form_validation/pagethree.dart';
import 'package:user_input_form_validation/pagetwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/Pageone': (context) => Pageone(),
        '/Pagetwo': (context) => Pagetwo(),
        '/pagethree': (context) => Pagethree(),
        '/Pagefour': (context) => Pagefour(),
        '/Pagefive': (context) => Pagefive(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
      ),
      home: SafeArea(
        child: Pageone(),
      ),
    );
  }
}
