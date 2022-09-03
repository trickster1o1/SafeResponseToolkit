import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/globalFunction/global.dart';
import 'package:safe_response_toolkit/pages/detail.dart';
import 'package:safe_response_toolkit/widget/sidebar.dart';

class PageList extends StatefulWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: CustomSideBar(MediaQuery.of(context).size.width),
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
                      onPressed: () => scaffoldKey.currentState?.openDrawer(),
                    ),
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
                          builder: (context) => const PageDetail(
                              title: 'Immediate Support',
                              list: {
                                'lists': [
                                  {
                                    'title': 'Are you safe?',
                                    'content':
                                        'Your first priority is to make sure you are safe. You have the right to always feel safe and to call the police if you are in danger. If you feel unsafe or would like immediate support, you can contact the police or someone you trust.',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Are you hurt?',
                                    'content':
                                        'Your first priority is to make sure that you are safe. If you feel unsafe, you should contact the police or someone you trust in your family or community. You can also contact the <a href="https://crcc.org.au">Canberra Rape Crisis Centre (CRCC)</a> Crisis Line for emergency referrals to support services.',
                                    'lsts': [
                                      'Emergency (police, ambulance, fire): Triple Zero (000) (24/7)',
                                      'ACT Policing: 131 444',
                                      'CRCC Crisis Line: (02) 6247 2525 (7am-11pm, 7 days a week)'
                                    ]
                                  },
                                  {
                                    'content':
                                        'Some sexual assaults can result in injuries. If you are in shock you may not be able to feel the injuries right away. Injuries can also be internal, meaning you may not be able to visually see them. If any of the following have occurred, call an ambulance on Triple Zero (000)',
                                    'lsts': [
                                      'Loss of consciousness',
                                      'Strangulation or choking',
                                      'Bleeding',
                                      'Pain in head or neck',
                                      'Difficulty breathing',
                                      'Chest pain.',
                                    ]
                                  },
                                  {
                                    'content':
                                        'If you have any other injuries that are concerning to you, seek immediate medical assistance.You can also visit the emergency departments at Canberra Hospital or Calvary Hospital for medical assistance. You do not have to report the assault to police to access medical assistance.',
                                    'lsts': [
                                      'Canberra Hospital Emergency: Building 12, Yamba Drive, Garran ACT 2605. Open 24/7. It is recommended that victim-survivors attend Canberra Hospital for specialised assistance after an experience of sexual violence. Forensic and Medical Sexual Assault Care (FAMSAC) and the Child At Risk Health Unit (CARHU) are located at the Canberra Hospital',
                                      'Calvary Hospital Emergency: 40 Mary Potter Circuit, Bruce ACT 2617. Open 24/7.'
                                    ]
                                  },
                                  {
                                    'content':
                                        'Note: If you are a temporary visa holder, access to hospital services may require payment.If you are over 15 years old, these hospitals can refer you to FAMSAC with your consent. FAMSAC is staffed by doctors and nurses who are trained to help victim-survivors of sexual violence. They can provide you with medicine to protect against sexually transmitted infections (STIs) and unwanted pregnancies. They can also collect forensic evidence which may help in any future investigation and/or prosecution of the perpetrator.',
                                    'lsts': [
                                      'CARHU: (02) 5124 2712 (9am-5pm) or via the Canberra Hospital switchboard on (02) 5124 0000. Open 24/7.',
                                      'FAMSAC: (02) 5124 2185 (24/7) or via the Canberra Hospital switchboard on (02) 5124 0000. Open 24/7.'
                                    ]
                                  },
                                  {
                                    'content':
                                        'For medical examination purposes, it is useful not to shower, drink liquids, smoke, change your clothes or use the bathroom after a sexual assault. If you do choose to change out of your clothes, it is helpful to put all clothing into a paper (not plastic) bag to preserve potential evidence. These actions can help medical staff to collect evidence from your body and/or clothes that might belong to the perpetrator.',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Are you unsure?',
                                    'content':
                                        'If you’re not sure about what to do, don’t want to go to hospital by yourself or want support from someone other than a family member or friend, you can call the CRCC. A trained CRCC counsellor can accompany you to the hospital or police station and/or can discuss how you feel and the impacts of what has happened to you.CRCC also offers specialist services for male and Aboriginal and Torres Strait Islander sexual violence victim-survivors.Contact CRCC on (02) 6247 2525 (7am-11pm, 7 days a week) to learn more about:',
                                    'lsts': [
                                      'Service Assisting Male Survivors of Sexual Assault (SAMSSA)',
                                      'Nguru Program (culturally appropriate counselling for Aboriginal and Torres Strait Islander peoples).'
                                    ]
                                  },
                                  {
                                    'content':
                                        'If you need help to communicate:',
                                    'lsts': [
                                      'CRCC text service: 0488 586 518',
                                      'National Relay Service: 1300 555 727',
                                      'Translation and Interpreting Service: 131 450'
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
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
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
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
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
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
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
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
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
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
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
