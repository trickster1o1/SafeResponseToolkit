import 'package:flutter/material.dart';
import 'package:o_popup/o_popup.dart';

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
        top: height * 0.5,
        child: SizedBox(
          width: width * 0.9,
          height: height * 0.5,
          child: Center(
            child: Column(
              children: list
                  .map(
                    (w) => Padding(
                      padding: const EdgeInsets.all(8.0),
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
                  )
                  .toList(),
            ),
          ),
        ),
      )
    ]),
  );
}

// Text(
//         text,
//         style: const TextStyle(
//           fontSize: 25.0,
//         ),
//       ),
