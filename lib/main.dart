import 'package:flutter/material.dart';
import 'package:project/modules/checkout/checkout_screen.dart';
import 'package:project/modules/home/home_screen.dart';
import 'package:project/modules/login/login_screen.dart';
import 'package:project/modules/login/register.dart';
import 'package:project/modules/movies/action.dart';
import 'package:project/modules/movies/horror.dart';
import 'package:project/modules/movies/romance.dart';
import 'package:project/modules/movies/comedy.dart';
import 'package:project/provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.deepOrange,
        ),

        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/signUp': (context) => const RegisterScreen(),
          '/home': (context) => const Home(),
          '/checkout': (context) => const Checkout(),
          '/horror': (context) => const HorrorScreen(),
          '/comedy': (context) => const ComedyScreen(),
          '/romance': (context) => const RomanceScreen(),
          '/action': (context) => const ActionScreen(),
        },
        //home: LoginScreen(),
      ),
    );
  }
}

