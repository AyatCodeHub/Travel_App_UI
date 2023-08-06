import '../widgets/drawer_app.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  static const ScreenRout = '/Filters_screen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Widget BuildSwitchListTile(var Value, String Title, String subTitle,
      void Function(bool)? onTabLink) {
    return SwitchListTile(
        value: Value,
        title: Text(Title),
        subtitle: Text(subTitle),
        onChanged: onTabLink);
  }

  var isInSummer = false;
  var isForFamilies = false;
  var isInWinter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('الفلترة'),
     ),
      drawer: const DrawerApp(),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Expanded(
              child: ListView(
            children: [
              BuildSwitchListTile(isInSummer, 'الرحلات الصيفية فقط ',
                  'إظهار الرحلات في فصل الصيف فقط', (newValue) {
                setState(() {
                  isInSummer = newValue;
                });
              }),
              BuildSwitchListTile(isInWinter, 'الرحلات الشتوية فقط',
                  'إظهار الرحلات في فصل الشتاء فقط', (newValue) {
                setState(() {
                  isInWinter = newValue;
                });
              }),
              BuildSwitchListTile(
                  isForFamilies, 'للعائلات', 'إظهار الرحلات التي للعائلات فقط',
                  (newValue) {
                setState(() {
                  isForFamilies = newValue;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}
