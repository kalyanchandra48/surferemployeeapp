import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RiveAnimation.asset("assets/Sucess.riv"),
        Text('You request has been registered'),
      ],
    );
  }
}
