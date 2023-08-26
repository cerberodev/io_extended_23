import 'package:flutter/material.dart';

class PrimaryMail extends StatelessWidget {
  const PrimaryMail({
    required this.iconData,
    required this.title,
    required this.msg,
    required this.count,
    required this.colors,
    super.key,
  });

  final IconData iconData;
  final String title;
  final String msg;
  final String count;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 16, 16, 16),
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            color: colors,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'GoogleMedium',
                    ),
                  ),
                  Text(
                    msg,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontFamily: 'GoogleRegular',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              count,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontFamily: 'GoogleMedium'),
            ),
          ),
        ],
      ),
    );
  }
}
