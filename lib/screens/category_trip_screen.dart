import 'package:flutter/material.dart';
import '../app_data.dart';
import '../models/trip.dart';
import '../widgets/trip_item.dart';

class categoryTripScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const ScreenRout = '/category_trips';

  const categoryTripScreen({super.key});

  // final String categoryId ;
  //  final String categoryTitle ;
  //
  // const categoryTripScreen (this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];


    final filtterTrip = trip_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
            itemCount: filtterTrip.length,
            itemBuilder: (ctx, i) {
              return TripItem(
                  id: filtterTrip[i].id,
                  title: filtterTrip[i].title,
                  imageUrl: filtterTrip[i].imageUrl,
                  duration: filtterTrip[i].duration,
                  season: filtterTrip[i].season,
                  tripType: filtterTrip[i].tripType,

              );


            }));
  }
}
