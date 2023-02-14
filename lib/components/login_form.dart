import 'package:flutter/material.dart';

import 'animated_hover.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedHover(
              size: const Size(360, 56),
              hoverColor: Colors.white,
              bgColor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, 6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  onSaved: (id) {},
                  decoration: const InputDecoration(
                    hintText: 'ID',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: AnimatedHover(
                size: const Size(360, 56),
                hoverColor: Colors.white,
                bgColor: Colors.white,
                border: Border.all(),
                offset: const Offset(6, 6),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: TextFormField(
                    onSaved: (pw) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'PASSWORD',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24,),
            AnimatedHover(
              size: const Size(88, 48),
              curve: Curves.fastOutSlowIn,
              offset: const Offset(6, 6),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(88, 48),
                  backgroundColor: const Color(0xFF556124),
                  foregroundColor: const Color(0xFFD9E1BE),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: const Text('Log In',),
              ),
            )
          ],
        ),
      ),
    );
  }
}
