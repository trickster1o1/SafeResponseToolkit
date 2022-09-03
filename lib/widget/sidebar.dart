import 'package:flutter/material.dart';

Widget CustomSideBar(width) {
  return Drawer(
    width: width * 0.5,
    backgroundColor: const Color.fromRGBO(236, 32, 69, 1),
    child: ListView(
      children: const [
        Image(image: AssetImage('assets/srt.png')),
        SizedBox(
          height: 15.0,
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
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
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: Icon(
            Icons.contact_support,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Immidiate Support',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: Icon(
            Icons.assistant_navigation,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Navigation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: Icon(
            Icons.design_services_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Support Services',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: Icon(
            Icons.emoji_objects_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Resources',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        ListTile(
          leading: Icon(
            Icons.contact_mail_outlined,
            color: Colors.white,
          ),
          horizontalTitleGap: 0.0,
          title: Text(
            'Contact',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
      ],
    ),
  );
}
