import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/globalFunction/global.dart';

class PageList extends StatefulWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: GlobalBg(),
        child: Column(children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 180,
                  width: 300,
                  child: Image(
                    image: AssetImage('assets/srt.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
                width: 100,
                child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 60.0,
                    ),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {}),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/response');
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(248, 187, 158, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromRGBO(248, 187, 158, 1))))),
                child: const Text(
                  'Immediate Response',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                )),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(248, 187, 158, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromRGBO(248, 187, 158, 1))))),
                child: const Text('Report Incident',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(248, 187, 158, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromRGBO(248, 187, 158, 1))))),
                child: const Text('Support Services',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(248, 187, 158, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromRGBO(248, 187, 158, 1))))),
                child: const Text('Quick Resources',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(248, 187, 158, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                                color: Color.fromRGBO(248, 187, 158, 1))))),
                child: const Text('Prevent Violences',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
        ]),
      ),
    ));
  }
}
