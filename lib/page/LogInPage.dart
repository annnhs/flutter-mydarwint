import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InkWell(
            onTap: () {},
            onHover: (hover) {
              setState(() {
                _isHover = hover;
              });
            },
            child: Container(
              height: 440,
              width: 440,
              decoration: BoxDecoration(
                color: _isHover ? Color(0xFFFBE851) : Color(0xFFE9EFF3),
                borderRadius: BorderRadius.all(Radius.circular(12)),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
