import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0.2, 0.2),
            color: Colors.grey,
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Search mail',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontFamily: 'GoogleRegular',
                ),
              ),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://avatars2.githubusercontent.com/u/47544543?s=460&v=4',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
