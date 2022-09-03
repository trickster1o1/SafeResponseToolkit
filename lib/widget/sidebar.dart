import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget CustomSideBar(width) {
  return Drawer(
    width: width * 0.7,
    backgroundColor: const Color.fromRGBO(236, 32, 69, 1),
    child: ListView(
      children: [
        const Image(image: AssetImage('assets/srt.png')),
        const SizedBox(
          height: 15.0,
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        const ListTile(
          leading: Icon(
            Icons.padding_rounded,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'About',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        const ListTile(
          leading: Icon(
            Icons.handshake_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Sharing Your Story',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        const ListTile(
          leading: Icon(
            Icons.volunteer_activism_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Activism and Advocacy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        const ListTile(
          leading: Icon(
            Icons.download,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Downloadable Community Resources.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: const Icon(
            Icons.web_sharp,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: InkWell(
            child: const Text(
              'The Safe Response Toolkit Website',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onTap: () async {
              await launchUrl(
                  Uri.parse('https://www.saferesponsetoolkit.com.au'));
            },
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        const ListTile(
          leading: Icon(
            Icons.back_hand_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'The STOP Campaign Website',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
      ],
    ),
  );
}
