import 'package:first/screens/TabBarScreen.dart';
import 'package:first/screens/filters_screen.dart';
import 'screens/trip_deatil_screen.dart';
import './screens/category_trip_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'), // English
      ],
      theme: ThemeData(
          // instead accent color
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
          primarySwatch: Colors.blue,
          //accentColor: Colors.amber,
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                // instead headline5
                headlineSmall: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
                // instead headline6
                titleLarge: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
              )),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        // '/category_trips': (ctx)=> categoryTripScreen(),
        '/': (ctx) => TabsScreen(),
        categoryTripScreen.ScreenRout: (ctx) => categoryTripScreen(),
        TripDeatilScreen.ScreenRout: (ctx) => TripDeatilScreen(),
        FilterScreen.ScreenRout: (ctx) => FilterScreen()

        // Container(
        //   child: const Center(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: Center(child: FilterState()),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      },
    );
  }
}
