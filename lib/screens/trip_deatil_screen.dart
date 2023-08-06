import 'package:flutter/material.dart';
import '../app_data.dart';

class TripDeatilScreen extends StatelessWidget {
  const TripDeatilScreen({super.key});

  static const ScreenRout = '/trip-detail-item';

  Widget buildText(BuildContext context, String text) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        alignment: Alignment.topRight,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall,
        ));
  }

  Widget buildList(Widget child) {
    return Container(
        height: 240,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final routArgumnt = ModalRoute.of(context)?.settings.arguments as String;

    final Id = routArgumnt;
    final SelectTrip = trip_data.firstWhere((trip) => Id == trip.id);

    return Scaffold(
        appBar: AppBar(
          title: Text(SelectTrip.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    SelectTrip.imageUrl,
                    fit: BoxFit.cover,
                  )),
              buildText(context, 'الأنشطه'),
              buildList(
                ListView.builder(
                  itemCount: SelectTrip.activities.length,
                  itemBuilder: (ctx, index) => Card(
                    elevation: 0.1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(SelectTrip.activities[index]),
                    ),
                  ),
                ),
              ),
              buildText(context, 'البرنامج اليومي'),
              buildList(ListView.builder(
                  itemCount: SelectTrip.program.length,
                  itemBuilder: (ctx, index) => Card(
                        elevation: 0.1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text(' يوم${index + 1} '),
                            ),
                            title: Text(SelectTrip.program[index]),
                          ),
                        ),
                      )))
            ],
          ),
        ));
  }
}
