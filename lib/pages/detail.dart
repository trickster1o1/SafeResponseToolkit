import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/widget/appnav.dart';
import 'package:safe_response_toolkit/widget/sidebar.dart';

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
                      child: Column(
                        children: [
                          Text(w['content']),
                          Column(
                            children: w['lsts']
                                .map<Widget>(
                                  (l) => SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
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
                                                0.9,
                                            child: Text(l)),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
