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
        drawer: CustomSideBar(MediaQuery.of(context).size.width, context),
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
                                        '<p style="text-align: justify;">Your first priority is to make sure you are safe. You have the right to always feel safe and to call the police if you are in danger. If you feel unsafe or would like immediate support, you can contact the police or someone you trust.</p>',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Are you hurt?',
                                    'content':
                                        '<p style="text-align: justify;">Your first priority is to make sure that you are safe. If you feel unsafe, you should contact the police or someone you trust in your family or community. You can also contact the <a href="https://crcc.org.au">Canberra Rape Crisis Centre (CRCC)</a> Crisis Line for emergency referrals to support services.</p>',
                                    'lsts': [
                                      'Emergency (police, ambulance, fire): <b>Triple Zero (000)</b> (24/7)',
                                      'ACT Policing: <b>131 444</b>',
                                      'CRCC Crisis Line: <b>(02) 6247 2525</b> (7am-11pm, 7 days a week)'
                                    ]
                                  },
                                  {
                                    'content':
                                        '<p style="text-align: justify;">Some sexual assaults can result in injuries. If you are in shock you may not be able to feel the injuries right away. Injuries can also be internal, meaning you may not be able to visually see them. If any of the following have occurred, call an ambulance on <b>Triple Zero (000)</b></p>',
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
                                        '<p style="text-align: justify;">If you have any other injuries that are concerning to you, seek immediate medical assistance.You can also visit the emergency departments at Canberra Hospital or Calvary Hospital for medical assistance. You do not have to report the assault to police to access medical assistance.</p>',
                                    'lsts': [
                                      'Canberra Hospital Emergency: Building 12, Yamba Drive, Garran ACT 2605. Open 24/7. It is recommended that victim-survivors attend Canberra Hospital for specialised assistance after an experience of sexual violence. Forensic and Medical Sexual Assault Care (FAMSAC) and the Child At Risk Health Unit (CARHU) are located at the Canberra Hospital',
                                      'Calvary Hospital Emergency: 40 Mary Potter Circuit, Bruce ACT 2617. Open 24/7.'
                                    ]
                                  },
                                  {
                                    'content':
                                        '<p style="text-align: justify;">Note: If you are a temporary visa holder, access to hospital services may require payment.If you are over 15 years old, these hospitals can refer you to FAMSAC with your consent. FAMSAC is staffed by doctors and nurses who are trained to help victim-survivors of sexual violence. They can provide you with medicine to protect against sexually transmitted infections (STIs) and unwanted pregnancies. They can also collect forensic evidence which may help in any future investigation and/or prosecution of the perpetrator.</p>',
                                    'lsts': [
                                      'CARHU: <b>(02) 5124 2712</b> (9am-5pm) or via the Canberra Hospital switchboard on (02) 5124 0000. Open 24/7.',
                                      'FAMSAC: <b>(02) 5124 2185</b> (24/7) or via the Canberra Hospital switchboard on (02) 5124 0000. Open 24/7.'
                                    ]
                                  },
                                  {
                                    'content':
                                        '<p style="text-align: justify;">For medical examination purposes, it is useful not to shower, drink liquids, smoke, change your clothes or use the bathroom after a sexual assault. If you do choose to change out of your clothes, it is helpful to put all clothing into a paper (not plastic) bag to preserve potential evidence. These actions can help medical staff to collect evidence from your body and/or clothes that might belong to the perpetrator.</p>',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Are you unsure?',
                                    'content':
                                        '<p style="text-align: justify;">If you’re not sure about what to do, don’t want to go to hospital by yourself or want support from someone other than a family member or friend, you can call the CRCC. A trained CRCC counsellor can accompany you to the hospital or police station and/or can discuss how you feel and the impacts of what has happened to you.CRCC also offers specialist services for male and Aboriginal and Torres Strait Islander sexual violence victim-survivors.Contact <b>CRCC on (02) 6247 2525</b> (7am-11pm, 7 days a week) to learn more about:</p>',
                                    'lsts': [
                                      'Service Assisting Male Survivors of Sexual Assault (SAMSSA)',
                                      'Nguru Program (culturally appropriate counselling for Aboriginal and Torres Strait Islander peoples).'
                                    ]
                                  },
                                  {
                                    'content':
                                        '<p style="text-align: justify;">If you need help to communicate:</p>',
                                    'lsts': [
                                      'CRCC text service: <b>0488 586 518</b>',
                                      'National Relay Service: <b>1300 555 727</b>',
                                      'Translation and Interpreting Service: <b>131 450</b>'
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
                          builder: (context) =>
                              const PageDetail(title: 'Report Incident', list: {
                            'lists': [
                              {
                                'title': 'ACT Crisis Support Services',
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://www.police.act.gov.au/safety-and-security/sexual-assault"><h4>ACT Policing | Sexual Assault and Child Abuse Team</h4></a><b>000</b> (Emergency)<br><b>131 444</b> (Non Emergency)<br>24/7<br>ACT Policing are responsible for keeping the community safe and responding to crimes in Canberra. The Sexual Assault and Child Abuse Team (SACAT), which is located at the ACT Policing Headquarters – Winchester Police Centre, is a specialised team within ACT Police dedicated to investigating sexual assault and child abuse in the ACT. In an emergency, contact ACT Policing on Triple Zero (000). If it is not an emergency but you would like police assistance, call 131 444. You can also access the police by visiting the five police stations listed <a href="https://www.police.act.gov.au/connect-us">here</a>.</p>',
                                'lsts': []
                              },
                              {
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://www.canberrahealthservices.act.gov.au/services-and-clinics/services/forensic-and-medical-sexual-assault-care-famsac"><h4>Forensic and Medical Sexual Assault Care (FAMSAC)</h4></a><b>(02) 5124 2185</b><br><b>(02) 5124 0000 </b> (via Canberra Hospital switchboard)<br>24/7<br><b>(02) 5124 2184 </b> (via Canberra Sexual Health Centre)<br>9am-5pm, Monday-Friday<br>Address: Canberra Hospital Emergency Department<br>24/7<br>Forensic and Medical Sexual Assault Care (FAMSAC) is a specialised service for victim-survivors of sexual violence based in the Canberra Hospital. It is staffed by trained doctors and nurses who can provide medical assistance to victim-survivors following an assault. FAMSAC can also collect forensic evidence from victim-survivors to be saved in case of future police investigation into the matter. FAMSAC services are free of charge and the facilities are wheelchair accessible.</p>',
                                'lsts': []
                              },
                              {
                                'content':
                                    '<p style="text-align: justify;"><h4>Child At Risk Health Unit (CARHU)</h4>Intake worker: <b>(02) 5124 2712</b><br>9am-5pm, Monday-Friday<br>After hours medical consultant: <b>(02) 5124 2222</b><br>5pm-9am, Monday-Sunday<br>Forensic and Medical Sexual Assault Care (FAMSAC) is a specialised service for victim-survivors of sexual violence based in the Canberra Hospital. It is staffed by trained doctors and nurses who can provide medical assistance to victim-survivors following an assault. FAMSAC can also collect forensic evidence from victim-survivors to be saved in case of future police investigation into the matter. FAMSAC services are free of charge and the facilities are wheelchair accessible.</p>',
                                'lsts': []
                              },
                              {
                                'title': 'ACT Legal Services',
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://www.legalaidact.org.au/"><h4>Legal Aid ACT</h4></a><b>1300 654 314</b><br>8:30am-7pm, Monday-Thursday; 8:30am-5pm, Friday<br>Email: <a href="mailto:legalaid@legalaidact.org.au">legalaid@legalaidact.org.au</a><br>Address: 2 Allsop Street, Canberra City ACT 2601<br>Legal Aid ACT provides a range of services and legal advice to people in the ACT, particularly those who cannot afford private legal advice. The Legal Aid Helpline is a free, confidential phone service staffed by Legal Aid paralegals who can help you organise an appointment with a lawyer for advice, send you information and resources relating to your legal problem and send an application for a grant of legal assistance. This service can also be accessed through the Live Chat button on their website.<br><br>Legal Aid ACT employs duty lawyers who can be consulted for free at the ACT Magistrates Court and Children’s Court for assistance on a one-off basis. They do not provide ongoing support. Duty Lawyers can also provide legal representation at ACT Civil and Administrative Appeals Tribunal hearings related to mental health orders. For ongoing legal advice and representation, you may be required to meet the financial means test for a grant of legal aid. Contact the Legal Aid Helpline for more information</p>',
                                'lsts': []
                              },
                              {
                                'title': 'ACT Accommodation Services',
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://www.onelink.org.au/"><h4>OneLink ACT</h4></a><b>1800 176 468</b><br>8am-6pm, Monday-Friday; 12.30pm-5pm, Saturday-Sunday<br>Email: <a href="mailto:info@onelink.org.au">info@onelink.org.au</a><br>Address: Ground Floor of Nature Conservation House, 153 Emu Bank, Belconnen, ACT, 2617<br>OneLink ACT acts as a central intake service for people experiencing, or at risk of experiencing, homelessness in the ACT. There are specialist services for men, women and young people. OneLink works closely with all services to assess needs, make referrals and connect clients with appropriate support. A OneLink assessment officer will discuss your needs, situation and appropriate services for assistance. They will connect clients with appropriate support services, including crisis accommodation</p>',
                                'lsts': []
                              },
                              {
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://www.beryl.org.au/"><h4>Beryl Women Inc.</h4></a>Call OneLink on 1800 176 468 to access accommodation<br><b>(02) 6230 6900</b><br>9am-5pm, Monday-Friday<br>Email: <a href="mailto:admin@beryl.org.au">admin@beryl.org.au</a><br>Beryl Women Inc. is a specialist domestic violence crisis accommodation service which can be accessed by women and children who are escaping domestic and/or family violence in the ACT. It provides a range of trauma-informed services including short-term and low-cost crisis accommodation, community outreach services, advocacy, therapeutic support, case management, referrals to other appropriate support services and post-crisis group support programs. Staff are trained and are from various diverse backgrounds, including First Nations women.</p>',
                                'lsts': []
                              },
                              {
                                'title': 'ACT General Support Services',
                                'content':
                                    '<p style="text-align: justify;"><a style="color: black;" href="https://genderrights.org.au/"><h4>A Gender Agenda</h4></a><b>(02) 6162 1924</b><br><b>0402 276 553</b> (Friday Centre - open 1pm-6pm Fridays)<br>9am-5pm, Monday-Friday<br>Email: <a href="mailto:fridaycentre@genderrights.org.au">fridaycentre@genderrights.org.au</a><br>A Gender Agenda (AGA) support the goals and needs of the intersex, transgender and gender diverse communities of Canberra and the surrounding region through education, advocacy, peer support and professional networks. AGA provides educational resources related to supporting LGBTIQA+ people and those who are questioning their gender identity, sexual health and wellbeing for intersex, transgender and gender diverse people, and LGBTIQA+ advocacy. AGA also offers social and networking events and training workshops on how to best support members of the LGBTIQA+ community.<br><br>AGA\'s Friday Centre also offers peer-navigation support for transgender and gender diverse people during their social, legal and/or medical transition.<br><br>AGA House is located in Lyneham. Contact AGA via phone or their website for the address.​</p>',
                                'lsts': []
                              },
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
                              title: 'Support Services',
                              list: {
                                'lists': [
                                  {
                                    'title': 'National Support Services',
                                    'content':
                                        '<p><a style="color: black;" href="https://www.1800respect.org.au/"><h4>1800RESPECT</h4></a><b>1800 737 732</b><br>24/7<br><p>1800RESPECT is Australia’s national sexual, domestic and family violence counselling service. 1800RESPECT can be accessed over the phone or online via a chat function 24/7. They have trained counsellors who can provide counselling, information and referrals. It is free to call from all landlines, payphones and most mobile phones. 1800RESPECT provides services for everyone, including those who have communication difficulties such as people who are hearing-impaired, speech-impaired or who can speak limited to no English. 1800RESPECT can also help supporters of those who have experienced or are at risk of experiencing sexual, domestic and family violence.</p></p>',
                                    'lsts': []
                                  },
                                  {
                                    'content':
                                        '<a style="color: black;" href="https://www.13yarn.org.au//"><h4>13YARN</h4></a><b>13 92 76</b><br>24/7<br><p>‍‍13YARN is a crisis support line for Aboriginal and Torres Strait Islander people that is accessible 24 hours a day. They offer a free and confidential one-on-one yarning opportunity with a Lifeline-trained Aboriginal and Torres Strait Islander Crisis Supporter.</p>',
                                    'lsts': []
                                  },
                                  {
                                    'content':
                                        '<a style="color: black;" href="https://kidshelpline.com.au/"><h4>Kids Helpline</h4></a><b>1800 551 800</b><br>24/7<br><p>‍‍Kids Helpline is a national service that provides free, private and confidential counselling for young people in Australia aged 5-25. Kids Helpline can be accessed over the phone or online via a chat service, which has specific links for different ages and demographics including kids 5-12, teens 13-17 and young adults 18-25. This service also offers support for parents and carers, as well as schools and teachers.</p>',
                                    'lsts': []
                                  },
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
                          builder: (context) =>
                              const PageDetail(title: 'Quick Resources', list: {
                            'lists': [
                              {
                                'title':
                                    'Medical Examination and Forensic Evidence Collection',
                                'content':
                                    '<a style="color: black;" href="https://www.canberrahealthservices.act.gov.au/services-and-clinics/services/forensic-and-medical-sexual-assault-care-famsac"><h4>Forensic and Medical Sexual Assault Care (FAMSAC)</h4></a><p>‍‍FAMSAC is a specialised service for victim-survivors of sexual violence at Canberra Hospital. It is staffed by trained doctors and nurses who can provide medical assistance to victim-survivors after an assault. FAMSAC can also collect forensic evidence from the body of a victim-survivor which can be used as evidence if police investigate the matter.<br><br>FAMSAC is available to victim-survivors aged over 15 years and operates 24/7. Medical examinations can be conducted any time after a sexual assault, although it is recommended that victim-survivors be examined as soon as possible. This is to ensure their immediate health and safety and to allow the best chance for forensic evidence to be collected.</p>',
                                'lsts': []
                              },
                              {
                                'title': 'Sexual Health Care',
                                'content':
                                    '<p>‍‍While not all victim-survivors will experience physical injuries or medical problems, the physical impacts of sexual assault can include:</p>',
                                'lsts': [
                                  'Damage to the sexual and/or reproductive organs',
                                  'Increased risk of contracting STIs',
                                  'Unwanted pregnancies',
                                  'Ongoing gynaecological problems',
                                  'Psychological trauma, depression and anxiety (which can manifest in physical symptoms).'
                                ]
                              },
                              {
                                'title': 'Support services',
                                'content':
                                    '<a style="color:black;" href="https://www.canberrahealthservices.act.gov.au/services-and-clinics/services/canberra-sexual-health-centre-cshc"><h4>Canberra Sexual Health Centre</h4></a><p>‍‍While not all victim-survivors will experience physical injuries or medical problems, the physical impacts of sexual assault can include:</p>',
                                'lsts': []
                              },
                              {
                                'content':
                                    '<a style="color:black;" href="https://www.shfpact.org.au/"><h4>Sexual Health and Family Planning ACT (SHFPACT)</h4></a><p>‍‍Sexual Health and Family Planning ACT (SHFPACT) offers free STI testing and treatment services, free unplanned pregnancy counselling and can provide information about options including medical terminations. For more information about SHFPACT, see the <a href="https://www.saferesponsetoolkit.com.au/act-support-services">ACT Support Services page</a>. </p>',
                                'lsts': []
                              },
                              {
                                'content':
                                    '<h4>Medical termination</h4><p>‍‍Medical termination of an unplanned pregnancy can be performed up until 9 weeks of pregnancy (as calculated from last menstrual period). Medical termination can be booked at Capital Gynaecology Australia (call (02) 6299 5559), Marie Stopes (call 1800 003 707) or at participating General Practices (GPs). There are doctors at some bulk billing practices that can provide terminations at a much lower cost than other organisations. To find out if your doctor provides this service, contact them to ask as it may vary among GPs and practitioners. SHFPACT can also provide more information about medical termination.</p>',
                                'lsts': []
                              },
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
                              title: 'Prevent Violances',
                              list: {
                                'lists': [
                                  {
                                    'title': 'Introduction',
                                    'content':
                                        '<p>‍‍Police are a gateway into the legal system for victim-survivors who want to pursue formal charges against a perpetrator. However, many victim-survivors do not disclose to law enforcement due to unhelpful and re-traumatising experiences, such as lengthy delays, failures in communication and the fear of being disbelieved, disrespected or blamed. In order to reduce re-traumatisation and harmful experiences while reporting, The STOP Campaign believes that police and those within the justice system require comprehensive training to deliver specialist sexual violence services that are trauma-informed and safe. <br><br>Adult victim-survivors have the right to choose whether or not to disclose sexual violence to police and can withdraw their engagement during the reporting process. However, there are some instances where police may have a "pro-arrest" policy designed to help protect victim-survivors who are in an abusive cycle of domestic violence, so withdrawing engagement is not possible in all circumstances.<br><br>This chapter provides an overview of making a police report, including the expected level of engagement and cooperation from a victim-survivor. While not all police reports will result in a perpetrator being charged, making a police report can be beneficial for victim-survivors and their healing process.</p>',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Making a Police Report',
                                    'content':
                                        '<p>‍‍If you have experienced sexual violence you can choose to have a forensic examination to assist in the preservation of evidence. This evidence can be used to aid in an investigation if you ever decide to report your experience of sexual violence to the police. Collecting this evidence may involve attending a health service, such as the Forensic and Medical Sexual Assault Care (FAMSAC) clinic at the Canberra Hospital. Collecting evidence does not mean you have to make a report. For more information about forensic evidence collection and medical support, see the <a href="https://www.saferesponsetoolkit.com.au/immediate-aftermath">Immediate Aftermath and Medical Options page.</a> <br><br>Adult victim-survivors have the right to choose whether or not to disclose sexual violence to police and can withdraw their engagement during the reporting process. However, there are some instances where police may have a "pro-arrest" policy designed to help protect victim-survivors who are in an abusive cycle of domestic violence, so withdrawing engagement is not possible in all circumstances.<br><br>If you have any concerns about contacting or providing information to police you can contact the Canberra Rape Crisis Centre (CRCC), Victim Support ACT, Domestic Violence Crisis Service (DVCS) or seek legal advice.<br><br>Deciding whether to report an incident of sexual violence to the police can be difficult. Victim-survivors who are unsure about whether to proceed with a formal statement can meet with police to discuss the formal reporting process. A support person can be present during this initial meeting, such as a trusted friend or family member, or a counsellor from the CRCC.<br><br>There is no statute of limitations in the ACT regarding sexual offences, meaning that a person can report an assault to the police regardless of how long ago it occurred.<br><br>Note: Cases of sexual violence are typically investigated in the jurisdiction where they occurred. However, victim-survivors can still report an offence that occurred outside of the jurisdiction (such as reporting a sexual assault that occurred in NSW to ACT Police or vice versa).</p>',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Where to make a report',
                                    'content':
                                        '<p>‍‍Victim-survivors can report sexual violence in-person at any of the five police station in the ACT or by calling 131 444 or Triple Zero (000). The ACT also has an online reporting option for historical sexual assault (occurring more than six months ago). The online reporting form can be found on the <a href="https://www.police.act.gov.au/report-and-register/online-forms">ACT Policing Website.</a><br><br>In some cases the investigation may be referred to the Sexual Assault and Child Abuse Team (SACAT), who are located at the ACT Policing Headquarters – Winchester Police Centre. SACAT officers investigate all sexual offences against children in the ACT that are reported to police. They also investigate sexual assaults and a range of other sexual offences against adults, particularly those which carry the heaviest penalties upon conviction. However, there are a number of sexual offences – such as acts of indecency – which are often investigated by General Duties Police.</p>',
                                    'lsts': []
                                  },
                                  {
                                    'title': 'Police Interviews',
                                    'content':
                                        '<p>‍‍The police officer who first speaks to a victim-survivor will usually take an initial report of the incident and in some circumstances may refer the investigation to SACAT. Victim-survivors will be asked to describe what happened in as much detail as possible, including:</p>',
                                    'lsts': [
                                      'When and where the incident took place',
                                      'Details of what occurred during the incident',
                                      'Information about the perpetrator',
                                      'The events leading up to the incident and what happened afterwards',
                                      'Anything that the perpetrator said or did before, during and after the incident.'
                                    ]
                                  },
                                  {
                                    'title':
                                        'Support during a police interview',
                                    'content':
                                        '<p>‍‍Recounting an experience of sexual violence to police can be incredibly distressing and re-traumatising. For this reason, victim-survivors have the right to guide the interview process and be supported during the interview if they choose. Victim-survivors may:</p>',
                                    'lsts': [
                                      'Be accompanied by a support person during an interview. This may be a trusted person or professional support person from the CRCC, Victim Support ACT or DVCS. If a victim-survivor has sought legal representation, they can also have their lawyer present. Victim-survivors also have the option to phone someone for support during the interview.',
                                      'Pause the interview at any time for a break.',
                                      'Leave the premises at any time and resume the interview at a later time or date.',
                                      'Withdraw their report or terminate the interview process.',
                                    ]
                                  },
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
