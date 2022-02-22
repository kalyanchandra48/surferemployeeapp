import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class PanelBackgroundImage extends StatelessWidget {
  final String bgImageUrl;
  final Color innerShadeColor;
  final Color outerShadeColor;

  const PanelBackgroundImage({
    required this.bgImageUrl,
    required this.innerShadeColor,
    required this.outerShadeColor,
    Key? key,
    required Animation<double> animation,
  })  : _animation = animation,
        super(key: key);

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          FadeTransition(
            opacity: _animation,
            child: Container(
              padding: const EdgeInsets.all(4),
              height: MediaQuery.of(context).size.height / 4,
              //width: 254,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: outerShadeColor,
                  ),
                  BoxShadow(
                    color: innerShadeColor,
                    spreadRadius: -50,
                    blurRadius: 20.0,
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                bgImageUrl,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
