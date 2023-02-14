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
      body: Center(
        child: AnimatedHover(
          child: Column(
            children: [
              Text('Get Started',),
            ],
          ),
        ),
      ),
    );
  }
}

// 애니메이션 효과 컴포넌트화

class AnimatedHover extends StatefulWidget {
  const AnimatedHover({
    super.key,
    required this.child,
    this.size = const Size(440, 440),
    this.hoverColor = const Color(0xFFFBE851),
    this.bgColor = const Color(0xFFE9EFF3),
    this.offset = const Offset(8, 8),
    this.curve = Curves.easeOutBack,
    this.duration = const Duration(milliseconds: 400),
    this.border = const Border(),
  });

  final Widget child;
  final Size size;
  final Color hoverColor, bgColor;
  final Offset offset;
  final Curve curve;
  final Duration duration;
  final Border border;

  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        // 애니메이션 효과 when hover on it
        AnimatedPositioned(
          duration: widget.duration,
          curve: widget.curve,
          top: _isHover ? -widget.offset.dy : 0,
          right: _isHover ? widget.offset.dx : 0,
          // 색 변경 when hover on it
          child: InkWell(
            onTap: () {},
            onHover: (hover) {
              setState(() {
                _isHover = hover;
              });
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            // 색이 변할 때 애니메이션 효과
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 440,
              width: 440,
              decoration: BoxDecoration(
                color: _isHover ? widget.hoverColor : widget.bgColor,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: widget.border,
              ),
              child: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}
