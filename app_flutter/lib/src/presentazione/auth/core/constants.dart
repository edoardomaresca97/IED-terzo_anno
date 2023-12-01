import 'package:flutter/material.dart';
import 'package:personal_app23/src/presentazione/auth/core/Presentation/Home/Homeviews.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;
User? get user => supabase.auth.currentUser;

void goTo(BuildContext context, Widget destination) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

void ifUserDoesentExist(BuildContext context) {
  if (user != null) {
    goTo(context, const HomeConnector());
  }
}

void ifUserExist(BuildContext context) {
  if (user != null) {
    goTo(context, const HomeConnector());
  }
}
