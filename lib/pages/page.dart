import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/globalFunction/global.dart';
import 'package:safe_response_toolkit/pages/detail.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PageDetail(title: 'Immediate Support', list: {
                        'lists': [
                          {
                            'content':
                                'Your first priority is to make sure you are safe. You have the right to always feel safe and to call the police if you are in danger. If you feel unsafe or would like immediate support, you can contact the police or someone you trust.',
                            'lsts': []
                          },
                          {
                            'content':
                                'Your first priority is to make sure that you are safe. If you feel unsafe, you should contact the police or someone you trust in your family or community. You can also contact the Canberra Rape Crisis Centre (CRCC) Crisis Line for emergency referrals to support services.',
                            'lsts': [
                              'Emergency (police, ambulance, fire): Triple Zero (000) (24/7)',
                              'ACT Policing: 131 444',
                              'CRCC Crisis Line: (02) 6247 2525 (7am-11pm, 7 days a week)'
                            ]
                          }
                        ]
                      }),
                    ),
                  );
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
                  'Immediate Support',
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageDetail(
                          title: 'Report Incident', list: {'lists': []}),
                    ),
                  );
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageDetail(
                          title: 'Support Services', list: {'lists': []}),
                    ),
                  );
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageDetail(
                          title: 'Quick Resources', list: {'lists': []}),
                    ),
                  );
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageDetail(
                          title: 'Prevent Violances', list: {'lists': []}),
                    ),
                  );
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
