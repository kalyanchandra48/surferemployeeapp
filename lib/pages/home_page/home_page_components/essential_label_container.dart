import 'package:flutter/material.dart';
import './home_page_components.dart';

class EssentialLabelWidget extends StatelessWidget {
  final String imageURl;
  final String titleText;
  final String type;
  final String labelText;
  final Color innerShade;
  final Color outerShade;
  final Object heroTag;

  const EssentialLabelWidget({
    Key? key,
    required this.imageURl,
    required this.titleText,
    required this.type,
    required this.labelText,
    required this.innerShade,
    required this.outerShade,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width / 2.4,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: outerShade,
          ),
          BoxShadow(
            color: innerShade,
            spreadRadius: -5,
            blurRadius: 20.0,
          ),
        ], borderRadius: BorderRadii.radius12px),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageURl,
              fit: BoxFit.scaleDown,
            ),
            Column(
              children: [
                Text(
                  titleText,
                  style: AppFonts.mediumTextBB,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  labelText,
                  style: AppFonts.smallText12
                      .copyWith(color: TextColors.labelTextGrey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
