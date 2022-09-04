import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:safe_response_toolkit/widget/customPopup.dart';
import 'package:safe_response_toolkit/globalFunction/global.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: GlobalBg(),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/srt.png'),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 60.0,
            ),
            SizedBox(
              width: 380.0,
              height: 500.0,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 15),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Are You Safe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      const Text(
                        'Do You Need Any Immediate Support?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 60.0),
                      SizedBox(
                        width: 200.0,
                        height: 50.0,
                        child: custompop(
                            text: 'Yes',
                            bgColor: Colors.blue,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            context: context,
                            list: [
                              {
                                'title': 'EMERGENCY CONTACTS',
                                'link': 'null',
                                'color': Colors.red,
                                'number': null,
                              },
                              {
                                'title': 'EMERGENCY HELPLINE',
                                'link': 'null',
                                'color': Colors.blue,
                                'number': 000,
                              },
                              {
                                'title': 'POLICE',
                                'link': 'null',
                                'color': Colors.blue,
                                'number': 131444,
                              },
                              {
                                'title': 'ORGANIZATIONS',
                                'link': 'null',
                                'color': Colors.blue,
                                'number': 1800737732,
                              },
                              {
                                'title': 'PERSONALIZED CONTACT',
                                'link': 'null',
                                'color': Colors.blue,
                                'number': 131114,
                              },
                            ]),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(
                        width: 200.0,
                        height: 50.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/pages');
                          },
                          child: Container(
                            color: Colors.red,
                            child: const Center(
                              child: Text(
                                'No',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ],
        ),
      ),
    ));
  }
}
