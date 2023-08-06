
import '../screens/filters_screen.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  Widget BuildListTile(IconData icon, String title, VoidCallback onTabLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 35,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'ElMessiri',
        ),
      ),
      onTap: onTabLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50),
          alignment: Alignment.center,
          width: double.infinity,
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'دليلك السياحي',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        BuildListTile(Icons.card_travel, 'تصنيف الرحلات', () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        BuildListTile(Icons.filter_list, 'الفلترة', () { 
          Navigator.of(context).pushReplacementNamed(FilterScreen.ScreenRout);
        })
      ],
    ));
  }
}
