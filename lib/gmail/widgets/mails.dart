import 'package:flutter/material.dart';

class Mails extends StatelessWidget {
  const Mails({
    required this.sender,
    required this.title,
    required this.msg,
    required this.time,
    required this.hasFile,
    super.key,
  });

  final String sender;
  final String title;
  final String msg;
  final String time;
  final bool hasFile;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 16, 16, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/24294081?s=460&v=4',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        sender,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'GoogleMedium',
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'GoogleRegular',
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'GoogleMedium',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          msg,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontFamily: 'GoogleMedium',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xffe6f4ea),
                        ),
                        child: const Text(
                          'Trip',
                          style: TextStyle(
                            color: Color(0xff449e47),
                            fontSize: 12,
                            fontFamily: 'GoogleRegular',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.star_outline,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                if (hasFile)
                  Container(
                    width: 140,
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade400),
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.document_scanner,
                          color: Color(0xff1a73e8),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Yosemite Trip Document',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff1a73e8),
                                fontFamily: 'GoogleMedium',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
