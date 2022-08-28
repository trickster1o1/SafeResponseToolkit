import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/srt.webp'),
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
                          child: ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Yes',
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        SizedBox(
                          width: 200.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'No',
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
