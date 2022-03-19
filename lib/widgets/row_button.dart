import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(75.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Color(0xfffdefd9),
              child: Row(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      launch("https://www.facebook.com");
                    },
                    icon: Image.asset(
                      "assets/images/social/facebook.png",
                      width: 15,
                      height: 15,
                    ),
                    label: (Text('')),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      launch("https://www.instagram.com");
                    },
                    icon: Image.asset(
                      "assets/images/social/instagram.png",
                      width: 15,
                      height: 15,
                    ),
                    label: (Text('')),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      launch("https://www.twitter.com");
                    },
                    icon: Image.asset(
                      "assets/images/social/twitter.png",
                      width: 15,
                      height: 15,
                    ),
                    label: (Text('')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

