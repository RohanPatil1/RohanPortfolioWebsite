import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;
  double? fontSize;
  Color? fontColor;

  BulletList(
      {Key? key,
      required this.strings,
      this.fontSize = 16.0,
      this.fontColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(16, 15, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(
                    fontSize: fontSize,
                    height: 1.55,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: fontSize,
                        color: fontColor,
                        height: 1.55,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
