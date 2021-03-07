import "package:flutter/material.dart";
import 'package:frontloops_03/constants.dart';

class MessengerTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kMessengerTitleHeight,
      color: kMessengerTitleColor,
      child: Padding(
        padding: const EdgeInsets.all(kMessengerTitlePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Transform.translate(
                      offset: Offset(0, -8),
                      child: Icon(
                        Icons.circle,
                        size: kMessengerTitleIconSize,
                        color: kMessengerTitleTextColor,
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Text("   "),
                  ),
                  TextSpan(
                    text: kMessengerTitle,
                    style: TextStyle(
                      fontSize: kMessengerFontSize,
                      fontWeight: FontWeight.w700,
                      letterSpacing: kMessengerLetterSpacing,
                    ),
                  ),
                ],
              ),
            ),
            kCloseButtonImage
          ],
        ),
      ),
    );
  }
}
