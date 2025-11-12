import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_todo/providers/auth.dart';
import 'package:flutter_todo/providers/todo.dart';

import 'package:flutter_todo/views/loading.dart';
import 'package:flutter_todo/views/login.dart';
import 'package:flutter_todo/views/register.dart';
import 'package:flutter_todo/views/password_reset.dart';
import 'package:flutter_todo/views/todos.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Router(),
          '/login': (context) => const LogIn(),
          '/register': (context) => const Register(),
          '/password-reset': (context) => const PasswordReset(),
        },
      ),
    ),
  );
}

class Router extends StatelessWidget {
  const Router({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Consumer<AuthProvider>(
      builder: (context, user, child) {
        switch (user.status) {
          case Status.uninitialized:
            return const Loading();
          case Status.unauthenticated:
            return const LogIn();
          case Status.authenticated:
            return ChangeNotifierProvider(
              create: (context) => TodoProvider(authProvider),
              child: const Todos(),
            );
          default:
            return const LogIn();
        }
      },
    );
  }
}
