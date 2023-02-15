import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/animated_hover.dart';
import '../components/login_form.dart';
import '../data/User.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedHover(
          curve: Curves.fastOutSlowIn,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log In',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 40,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
