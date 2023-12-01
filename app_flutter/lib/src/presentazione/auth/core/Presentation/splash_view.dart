import 'package:flutter/material.dart';
import 'package:personal_app23/src/presentazione/auth/core/Presentation/Home/Homeviews.dart';
import 'package:personal_app23/src/presentazione/auth/core/constants.dart';
import 'package:personal_app23/src/presentazione/auth/views/auth_view.dart';

class SplashConnector extends StatefulWidget {
  const SplashConnector({super.key});

  @override
  State<SplashConnector> createState() => _SplashConnectorState();
}

class _SplashConnectorState extends State<SplashConnector> {
  @override
  void initState() {
    if (user != null) {
      goTo(context, const HomeConnector());
    }
    super.initState();
  }

  void checkUser() async {
    await Future.delayed(const Duration(seconds: 1));
    if (user != null) {
      //Navigator.of(context).push('/home');
      goTo(context, const HomeConnector());
    } else {
      goTo(context, const AuthConnector());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
