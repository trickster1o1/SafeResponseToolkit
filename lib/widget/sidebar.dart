import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/detail.dart';

Widget CustomSideBar(width, context) {
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PageDetail(title: 'About Us', list: {
                    'lists': [
                      {
                        'content':
                            '<p>The Safe Response Toolkit is an initiative by The STOP Campaign for the ACT community. ​This project was made possible by YWCA Canberra through their 2021 Great Ydeas Small Grants Program. Founder and Director of The STOP Campaign, Camille Schloeffel, was awarded \$2,500 to commence this project.<br><br>Click <a href="https://www.saferesponsetoolkit.com.au/_files/ugd/39c35e_42dafb16f0ba4e3bb85c989c438f11c1.pdf">here</a> to view this page in pdf format. </p>',
                        'lsts': [],
                      },
                      {
                        'title': 'Safe Response Toolkit',
                        'content':
                            '<h2>What it is</h2><p>The <b>Safe Response Toolkit: A Toolkit for Sexual Violence Victim-Survivors and Their Supporters (SRT)</b> is a physical and online resource that provides information to victim-survivors and their supporters about how to safely respond to sexual violence disclosures and access support services in the ACT. The SRT is available online and has been distributed in hardcopy across the community, targeting legal, medical and education settings.</p>',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<h2>What it does</h2><p><img src="https://static.wixstatic.com/media/39c35e_b48ce1007a8b4072a6d1300c0983bcb8~mv2.png/v1/fill/w_933,h_1373,al_bl,q_90,usm_0.66_1.00_0.01,enc_auto/39c35e_b48ce1007a8b4072a6d1300c0983bcb8~mv2.png"><br><br>The SRT’s primary goals are to:</p>',
                        'lsts': [
                          'Raise community awareness about sexual violence',
                          'Advocate for victim-survivors and their rights',
                          'Inform victim-survivors, their supporters and the general community about the avenues available to victim-survivors after an experience of sexual violence',
                          'Empower victim-survivors to seek help and support',
                          'Ultimately, to help victim-survivors heal and thrive.'
                        ],
                      },
                      {
                        'content':
                            '<h2>What it includes</h2><p>The SRT covers topics including:</p>',
                        'lsts': [
                          'Key concepts to understand sexual violence, gendered violence, sexual health and wellbeing and destigmatisation',
                          'Sexual violence and the law, including the criminal, civil and restorative justice processes',
                          'Reporting sexual violence to law enforcement and reporting sexual violence that occurs in institutional settings (including workplaces, schools and universities)',
                          'Support services in the ACT and nationally, including those available in the immediate aftermath of sexual violence',
                          'The process of sharing an experience of sexual violence publicly',
                          'Sexual violence activism and advocacy.'
                        ],
                      },
                      {
                        'content':
                            '<h2>Purpose</h2><p>Currently, there is a lack of clear, trauma-informed and accessible information for victim-survivors and their supporters regarding the personal, legal and medical considerations when disclosing and reporting sexual violence in the ACT. Information on these topics is often vague, outdated and spread across multiple websites and platforms. The purpose of the SRT is to collate information about sexual violence and support services in the ACT in one place. </p>',
                        'lsts': [
                          'Alleviate some of the complexities involved in police, legal and health processes',
                          'Make the process of seeking support less intimidating',
                          'Ensure that victim-survivors ultimately feel empowered to access the support they need.'
                        ],
                      },
                      {
                        'content':
                            '<h2>Impact</h2><p>The SRT provides clear, accurate and easily accessible information about the process of seeking support following an experience of sexual violence. We hope that the SRT can:</p>',
                        'lsts': [
                          'Alleviate some of the complexities involved in police, legal and health processes',
                          'Make the process of seeking support less intimidating',
                          'Ensure that victim-survivors ultimately feel empowered to access the support they need.'
                        ],
                      },
                      {
                        'title': 'The STOP Campaign',
                        'content':
                            '<h2>About Us</h2><p>The STOP Campaign is a grassroots organisation and registered not-for-profit dedicated to empowering young people to create and sustain positive sociocultural change regarding sex and sexual violence by starting conversations and breaking down stigmas. We are focused on tackling sexual violence in Australian tertiary learning communities, through empowerment, education, activism and awareness. We are a volunteer-run intersectional feminist organisation that values intersectionality, integrity, respect and passion.<br><br><img src="https://static.wixstatic.com/media/39c35e_03d651b192794207b5816bc15302b212~mv2.jpg/v1/fill/w_933,h_995,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/39c35e_03d651b192794207b5816bc15302b212~mv2.jpg"><br><br>The Campaign has successfully implemented a number of projects in the ACT since our formation in 2018. These projects include:</p>',
                        'lsts': [
                          'The creation of educational materials and resources on safe sex and consent, sexual violence and sex positivity',
                          'Facilitating peer-led education sessions in university colleges',
                          'Facilitating programs for young people (particularly victim-survivors) focused on empowerment and confidence',
                          'Building a platform for victim-survivors in our community to publicly share their experiences and journeys towards healing.',
                        ],
                      },
                      {
                        'content':
                            '<h2>Mission</h2><p>Empower young people to create and sustain positive sociocultural change in Australian tertiary learning communities through activism, awareness, empowerment and education.</p>',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<h2>Vision</h2><p>Australian tertiary learning communities that are free from sexual violence and stigmatisation.</p>',
                        'lsts': [],
                      },
                      {
                        'content': '<h2>Values</h2>',
                        'lsts': [
                          'Intersectionality',
                          'Respect',
                          'Integrity',
                          'Passion'
                        ],
                      },
                      {
                        'title': 'Want the SRT in your community?',
                        'content':
                            '<p>The SRT is a necessary resource for victim-survivors of sexual violence and their supporters in the ACT. Distributing this resource across the ACT will raise awareness of sexual violence prevention and support and equip members of the community with the skills to respond appropriately to sexual violence.<br><br>If you would like the SRT in your community, workplace, organisation or another community hub, contact The STOP Campaign. We will do our best to ensure the SRT is available where it needs to be and that copies are easily accessible.<br><br>Go to the <a href="https://www.saferesponsetoolkit.com.au/contact">Contact</a> page to find out how.</p>',
                        'lsts': [
                          'Intersectionality',
                          'Respect',
                          'Integrity',
                          'Passion'
                        ],
                      },
                    ]
                  }),
                ));
          },
          child: const ListTile(
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
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PageDetail(title: 'Sharing Your Story', list: {
                    'lists': [
                      {
                        'title': 'Introduction',
                        'content':
                            '<p>The STOP Campaign believes that victim-survivors’ stories deserve to be heard and have the power to enact change. Sexual violence and trauma is difficult to speak about and victim-survivors are often stigmatised for telling their stories. The STOP Campaign aims to change this. Stories of sexual violence aren’t easy to read or listen to, but if we don’t start sharing them, victim-survivors will continue to be silenced.<br><br>Telling someone that you’ve experienced sexual violence is always your choice. It may be difficult to share an experience of sexual violence and sometimes it may feel especially daunting to bring it up with people closest to you, such as family and friends. Whether you choose to tell others right away, years later or prefer not to share your experience at all is entirely up to you. Remember, deciding to disclose doesn’t mean sharing every detail - it’s your decision as to how much or how little you feel comfortable with.</p>',
                        'lsts': [],
                      },
                      {
                        'title': 'Sharing Your Story With Someone You Know',
                        'content':
                            '<p>A disclosure is the act of telling someone about your experience of sexual violence. If you are thinking about disclosing to someone you know about your experience of sexual violence, there are some key things to consider, including:<br><br><b>Who</b><br>You decide who you tell about an experience of sexual violence. It is important to consider whether the person you wish to tell will react in a supportive way. Have you heard them make unsupportive or judgemental remarks about sexual violence? Have they ever shared their own personal experience with sexual violence? Will that person respect your autonomy by not prying further and keeping your story confidential? Not everyone will know how to appropriately react or process the information that you share with them, so it is important to check with that person to see if they are comfortable.<br><br><b>How</b><br>When deciding how to tell someone about an experience of sexual violence, it’s important to choose a way that makes you feel the most comfortable. It can be in-person, over the phone or via message. There are a few things to consider when deciding which avenue to choose. For instance, if you are worried about being interrupted or being asked too many questions, writing a message could be helpful. No matter how you choose to tell someone, it is a good idea to set some ground rules first. For example, you can say something like, “I’d like to tell you about something that’s hard for me to talk about, if that’s okay with you? It would mean a lot to me if you would listen and not ask about the details.”<br><br><b>What</b><br>The information you want to share about your personal experience of sexual violence is completely up to you. If the person you’re telling doesn’t know how to respond and is trying to think of something to say, they may end up asking for details of what happened. However, just because they ask for details doesn’t mean you have to tell them. You can always say something like, “I wanted to tell you that this happened to me but I don’t feel comfortable sharing any more details about it right now.”<br><br><b>When</b><br>It is best to choose a time that you are both comfortable with so the person has time to be present and process what has been shared. For example, if someone is about to go to sleep, is leaving the house or is intoxicated, consider waiting for a time that is more suitable for the conversation.<br><br><b>Where</b><br>If you decide to share your story in-person, it is important you feel safe. If you are comfortable with the person you are disclosing to then you may decide to meet in a private location. However, if you are not fully comfortable, you may decide to meet them in a public location and/or you could ask someone you trust to come with you.</p>',
                        'lsts': [],
                      },
                      {
                        'title': 'Sharing Your Story Publicly',
                        'content':
                            '<p>Sharing your experience with sexual violence publicly can be empowering. You have options to choose how to do this, such as via a journalist working for traditional news media, your personal social media account or through a grassroots movement or platform that shares stories. Note that each medium will bring unique challenges.<br><br>In 2017, journalist and <a href="https://www.endrapeoncampusau.org/">End Rape On Campus (EROC)</a> Australia director, Nina Funnell, authored a series of <a href="https://www.thehuntinggroundaustralia.com.au/wp-content/uploads/2017/07/Sexual-Assault-within-University-Communities-Victim-Survivors-Factsheet.pdf">factsheets</a> for the Full Stop Foundation on what your rights and options are when working with media. The following information is reproduced from those factsheets with Funnell\'s permission. If you are thinking of sharing your experience of sexual violence publicly, it may be useful to ask yourself the following questions:</p>',
                        'lsts': [
                          'Are there any family or friends I want to disclose to before sharing my story publicly?',
                          'Am I comfortable with the possibility that media outlets could contact me, even months or years from now?',
                          'Am I comfortable with the possibility that other victim-survivors may want to reach out to me and disclose their own experiences? Do I know where to refer them for support?',
                          'Am I prepared for the possibility that I could experience backlash, trolling, doubt, intrusive questions or comments from members of the public, or from people I know?',
                          'Am I comfortable with my name permanently being attached to this issue in the public domain or would I prefer to remain anonymous?',
                          'In five or ten years, will I still be comfortable for people to be able to search and find this information about me?',
                          'Do I have a solid support network to assist me?',
                          'What strategies or tools do I already have to help me manage any negative experiences or fallout after sharing my story publicly?'
                        ],
                      },
                      {
                        'title': 'Considerations When Sharing Your Story',
                        'content':
                            '<h4>Personal safety considerations</h4><p>Sharing your story publicly after experiencing sexual violence may carry a risk to your personal safety. Looking after your personal safety might require you to remain anonymous or keep some of your personal information (such as your name and/or face) private to prevent people from knowing your identity. This can protect you from being targeted by people who hear or see your story.<br><br>If you would like to share your story but are worried about repercussions from someone you know, or if you are experiencing violence or threatening behaviour as a result of sharing your story, you may be able to apply for a Personal Protection Order (PPO) against the person harming you. PPOs can prohibit a person from engaging in physical and sexual violence, intimidating, offensive or harassing behaviour, threats, stalking and property damage. For more information about specific types of protection orders and applying for protection orders, see the <a href="https://www.saferesponsetoolkit.com.au/navigating-the-justice-system">Navigating the Justice System</a> page.<br><br>If you are experiencing harassment or threatening behaviour online (such as threatening or violent texts, emails or social media messages) after sharing your story, you can report to the police or the Office of the eSafety Commissioner (eSafety). For more information about reporting sexual violence, see the <a href="https://www.saferesponsetoolkit.com.au/police-and-investigation">Police and Investigation</a> page.</p>',
                        'lsts': [],
                      },
                    ]
                  }),
                ));
          },
          child: const ListTile(
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
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PageDetail(title: 'Activism and Advocacy', list: {
                    'lists': [
                      {
                        'title': 'What is Activism and Advocacy?',
                        'content':
                            '<p>Activism and advocacy is all about having your voice heard and sparking social change. It is also an aspect of the whole-of-community approach to prevention.</p>',
                        'lsts': [],
                      },
                      {
                        'title': 'Activism',
                        'content':
                            '<p>Activism involves taking deliberate action on behalf of a cause to challenge societal norms and systems in order to effect social change. This includes actions like organising or attending protests, meeting with important leaders to push for policy or legal change on a particular topic or circulating petitions for signature. The term "grassroots activism" is also often used to describe activism that occurs within local communities to create change at the local, regional and/or international level.<br><br>Activists want to make a statement to the community, shock the system, generate publicity and exert political pressure. Intersectional activism can be an extremely powerful means for providing minorities with a voice, highlighting important civic issues and ultimately instigating radical political change.</p>',
                        'lsts': [],
                      },
                      {
                        'title': 'Advocacy',
                        'content':
                            '<p>Advocacy describes purposeful actions that aim to change attitudes, policies and practices within societal norms and systems. This might include encouraging open discussions about important issues with community members, volunteering for social justice organisations or participating in social media movements to raise awareness of a particular issue.</p>',
                        'lsts': [],
                      },
                      {
                        'title': 'How to spark change',
                        'content':
                            '<p>Campaigning, activism, influencing, lobbying and protesting are drawn together by the theme of change. Different ways of sparking change for issues you care about in your community at the local, regional or international level might include:</p>',
                        'lsts': [
                          'Participating in social media campaigns',
                          'Signing a petition',
                          'Expressing your views to those in power, for example by writing a letter',
                          'Organising a performance, public exhibition or hosting an event',
                          'Contacting media',
                          'Writing a blog',
                          'Sharing your art',
                          'Empowering and educating others through open conversation and learning.'
                        ],
                      },
                    ]
                  }),
                ));
          },
          child: const ListTile(
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
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PageDetail(title: 'Our Resources', list: {
                    'lists': [
                      {
                        'title': 'Community Resources',
                        'content':
                            '<p><a href="https://www.saferesponsetoolkit.com.au/_files/ugd/39c35e_b26b61a94cee4b73b68e60711dbe4a02.pdf">Click here to download the Community Resources as a package.</a><img src="https://static.wixstatic.com/media/39c35e_21453ad04cee44b7b3390500a8eb833a~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/39c35e_21453ad04cee44b7b3390500a8eb833a~mv2.png"></p>',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_60a739c8bda04fc7b861974bbe83d4f5~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/4.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_a2a15bcb99804bf393f8254fe1b0c7c1~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/5.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_b2574cae42804a3fb93866b3ed884df7~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/6.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_98d4e6b8e313457f8dbd585309db8e65~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/7.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_3cbc27cbd59840d78e928b99b851fd8d~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_2bcd0b660010485aa603191b02690f2f~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_bc092168ff5a40e092e97b325ac04295~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/10.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_302910a3927644f9b9e6231e1389e146~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/11.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_bb265584c3a34929901a16e79e107304~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/12.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_05416c756d634ab3a0338582b48c8735~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/13.png">',
                        'lsts': [],
                      },
                      {
                        'content':
                            '<img src ="https://static.wixstatic.com/media/39c35e_1d74c308c7b94410aac56def4da09111~mv2.png/v1/fill/w_422,h_597,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/14.png">',
                        'lsts': [],
                      },
                    ]
                  }),
                ));
          },
          child: const ListTile(
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
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        InkWell(
          onTap: () async {
            await launchUrl(
                Uri.parse('https://www.saferesponsetoolkit.com.au'));
          },
          child: const ListTile(
            leading: Icon(
              Icons.web_sharp,
              color: Colors.white,
            ),
            horizontalTitleGap: 0.0,
            title: Text(
              'The Safe Response Toolkit Website',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
        InkWell(
          onTap: () async {
            await launchUrl(Uri.parse('https://www.thestopcampaign.org.au'));
          },
          child: const ListTile(
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
        ),
        const Divider(
          color: Color.fromRGBO(255, 150, 100, 0.8),
        ),
      ],
    ),
  );
}
