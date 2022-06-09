import 'package:employee_app/pages/bottom_nav/bottom_nav.dart';
import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RequestSucessPage extends StatelessWidget {
  const RequestSucessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNav(),
          ));
    });
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          height: MediaQuery.of(context).size.height / 1.05,
          decoration: const BoxDecoration(
            borderRadius: BorderRadii.radius24px,
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  height: 185,
                  width: 185,
                  child: RiveAnimation.asset("assets/Success.riv")),
              SizedBox(
                  width: 190,
                  child: Text(
                    ' Your Request has been Registered',
                    style: AppFonts.largeTextBB,
                  )),
            ],
          ),
        ),
        Positioned(
          top: 10,
          child: Center(
            child: Container(
              height: 4,
              width: 119,
              decoration: BoxDecoration(
                borderRadius: BorderRadii.radius4px,
                color: ContainerColors.greyContainer,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
