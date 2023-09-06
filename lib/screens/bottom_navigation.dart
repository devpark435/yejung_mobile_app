import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yejung_flutter_app/screens/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    Text("Location"),
    HomeScreen(),
    Text("Category"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: _widgetOptions.elementAt(_selectIndex)),
      bottomNavigationBar: GNav(
          haptic: true,
          curve: Curves.easeIn,
          gap: 3,
          tabBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
          backgroundColor: Theme.of(context).colorScheme.background,
          tabBorderRadius: 25,
          activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
          tabMargin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          tabs: const [
            GButton(icon: Icons.location_on, text: 'location'),
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(icon: Icons.list, text: 'category'),
          ],
          selectedIndex: _selectIndex,
          onTabChange: (index) {
            setState(() {
              _selectIndex = index;
            });
          }),
    );
  }
}
