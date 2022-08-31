import 'package:flutter/material.dart';
import 'package:o_popup/o_popup.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

Widget custompop(
    {String text = "",
    dynamic bgColor = Colors.blue,
    double height = 100.0,
    double width = 100.0,
    required List list}) {
  return OPopupTrigger(
    triggerWidget: Container(
      color: bgColor,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
    // popupHeader: OPopupContent.standardizedHeader('Click anywhere'),
    popupContent:
        Stack(alignment: AlignmentDirectional.center, children: <Widget>[
      Positioned(
        top: height * 0.58,
        child: SizedBox(
          width: width * 0.9,
          height: height * 0.5,
          child: Center(
            child: Column(
              children: list
                  .map(
                    (w) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () async {
                          if (w['number'] != null) {
                            bool? res =
                                await FlutterPhoneDirectCaller.callNumber(
                                    w['number'].toString());
                          }
                        },
                        child: Container(
                          height: 50,
                          width: width * 0.99,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.white30, spreadRadius: 1),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            w['title'],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: w['color'],
                            ),
                          )),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      )
    ]),
  );
}


//  IconButton(icon: new Icon(Icons.phone),
//     onPressed: () 
//     {
//        setState(() {
//           _makePhoneCall('tel:0597924917');
//        });
//     },
//   ),