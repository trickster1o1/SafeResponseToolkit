import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/widget/appnav.dart';
import 'package:safe_response_toolkit/widget/sidebar.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class PageDetail extends StatefulWidget {
  final String title;
  final Map list;
  const PageDetail({Key? key, required this.title, required this.list})
      : super(key: key);

  @override
  State<PageDetail> createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      endDrawer: CustomSideBar(MediaQuery.of(context).size.width),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(231, 246, 255, 1),
          child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(175, 215, 246, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                          child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  )),
              Column(
                children: widget.list['lists']
                    .map<Widget>(
                      (w) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(color: Colors.white30, spreadRadius: 1),
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                w['title'] ?? '',
                                style: TextStyle(
                                  fontSize: w['title'] != null ? 25.0 : 0,
                                ),
                              ),
                              // SizedBox(
                              //   height: w['title'] != null ? 10.0 : 0,
                              // ),
                              Html(
                                data: w['content'],
                                style: {
                                  'p': Style(
                                    textAlign: TextAlign.justify,
                                    padding: EdgeInsets.zero,
                                    margin: EdgeInsets.zero,
                                  ),
                                  'h4': Style(
                                    margin: EdgeInsets.zero,
                                  ),
                                },
                                onLinkTap:
                                    (url, context, attrs, element) async {
                                  await launchUrl(Uri.parse(url!));
                                },
                              ),
                              Column(
                                children: w['lsts']
                                    .map<Widget>(
                                      (l) => SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1.0,
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.circle,
                                              size: 10.0,
                                            ),
                                            const SizedBox(
                                              width: 5.5,
                                            ),
                                            SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                child: Html(data: l)),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
