import 'package:flutter/material.dart';
import 'package:hello_world/widgets/contact_button.dart';

class Portfalio extends StatelessWidget {
  const Portfalio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                    'https://scontent.fgau1-2.fna.fbcdn.net/v/t39.30808-1/270219544_131001142715965_1389659416033393631_n.jpg?stp=c568.512.492.492a_dst-jpg_s200x200&_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=eiAQEvVDPmgAX8Kvbl5&_nc_ht=scontent.fgau1-2.fna&oh=00_AT-a4YqI_GI5N6vD3FK8TQIIo-_5o39IDJYsrM2xBsIDUw&oe=623779EB'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Irfan",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: Icon(
              Icons.send_sharp,
            ),
            onPressed: () {
              print("Hello");
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}
