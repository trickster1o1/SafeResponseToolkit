import 'package:flutter/material.dart';
import 'package:safe_response_toolkit/widget/appnav.dart';
import 'package:safe_response_toolkit/widget/sidebar.dart';

class PageDetail extends StatefulWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  State<PageDetail> createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      endDrawer: CustomSideBar(MediaQuery.of(context).size.width),
      body: const Center(
        child: Text('Working'),
      ),
    );
  }
}
