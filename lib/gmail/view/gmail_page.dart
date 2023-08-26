import 'package:flutter/material.dart';
import 'package:io_extended_23/gmail/widgets/widgets.dart';

class GmailPage extends StatelessWidget {
  const GmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('gmailPage'),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.plus_one,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'PRIMARY',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'GoogleMedium',
                  color: Colors.black54,
                ),
              ),
            ),
            PrimaryMail(
              iconData: Icons.youtube_searched_for_rounded,
              title: 'Social',
              msg: 'YouTube',
              count: '12 new',
              colors: Color(0xff1a73e8),
            ),
            PrimaryMail(
              iconData: Icons.local_offer_rounded,
              title: 'Promotions',
              msg: 'Think with Google',
              count: '18 new',
              colors: Color(0xff1e8e3e),
            ),
            PrimaryMail(
              iconData: Icons.forum_outlined,
              title: 'Forums',
              msg: 'Google Play',
              count: '25 new',
              colors: Color(0xff8024cd),
            ),
            Mails(
              sender: 'Cecilia, Nik',
              title: 'Trip to Yosemite',
              time: '2:13 PM',
              hasFile: true,
              msg: 'Check out the planning document',
            ),
            Mails(
              sender: 'Jeroen, Tino',
              title: 'Coffee-making class',
              time: '12:57 PM',
              hasFile: false,
              msg: 'Hi, I made a reservation',
            ),
          ],
        ),
      ),
    );
  }
}
