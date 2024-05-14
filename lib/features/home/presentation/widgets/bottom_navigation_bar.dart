import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget(
      {super.key, required this.currentIndex, required this.onTap});
  final int currentIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_max_outlined,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore_outlined,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.badge_outlined,
          ),
          label: 'Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.ios_share_outlined,
          ),
          label: 'Share',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.face,
          ),
          label: 'Account',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
