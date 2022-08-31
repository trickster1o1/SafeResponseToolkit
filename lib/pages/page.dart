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
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            height: 70.0,
            child: RaisedButton(
                color: const Color.fromRGBO(248, 187, 158, 1),
                onPressed: () {},
                child: const Text(
                  'Immediate Response',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                )),
          ),
          const SizedBox(height: 25.0),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            height: 70.0,
            child: RaisedButton(
                color: const Color.fromRGBO(248, 187, 158, 1),
                onPressed: () {},
                child: const Text('Report Incident',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            height: 70.0,
            child: RaisedButton(
                color: const Color.fromRGBO(248, 187, 158, 1),
                onPressed: () {},
                child: const Text('Support Services',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            height: 70.0,
            child: RaisedButton(
                color: const Color.fromRGBO(248, 187, 158, 1),
                onPressed: () {},
                child: const Text('Quick Resources',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ))),
          ),
          const SizedBox(height: 25.0),
          ButtonTheme(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            height: 70.0,
            child: RaisedButton(
                color: const Color.fromRGBO(248, 187, 158, 1),
                onPressed: () {},
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
