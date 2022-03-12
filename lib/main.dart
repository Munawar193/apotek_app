import 'package:apotek_app/cubit/auth_cubit.dart';
import 'package:apotek_app/ui/pages/consul_page.dart';
import 'package:apotek_app/ui/pages/detail_consul_page.dart';
import 'package:apotek_app/ui/pages/detail_payment_page.dart';
import 'package:apotek_app/ui/pages/main_page.dart';
import 'package:apotek_app/ui/pages/sign_in_page.dart';
import 'package:apotek_app/ui/pages/sign_up_page.dart';
import 'package:apotek_app/ui/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          'sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main': (context) => const MainPage(),
          '/consul': (context) => const ConsulPage(),
          '/detail-consul': (context) => const DetailConsulPage(),
          '/detail-payment': (context) => const DetailPage(),
        },
      ),
    );
  }
}
