import '../screens/category_trip_screen.dart';
import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  final String imageUrl;
  final String id ;
  final String title;

  categoryItem(
      this.id,
    this.title,
    this.imageUrl,
  );

  void selectCategory(BuildContext ctx) {
    // Navigator.of(ctx)
    //     .push(MaterialPageRoute(builder: (c) => categoryTripScreen(id,title)));
    // Navigator.of(ctx).pushNamed('/category_trips',
    //     arguments: {
    //       'id':id,
    //       'title':title
    //     }
    Navigator.of(ctx).pushNamed(categoryTripScreen.ScreenRout,
    arguments: {
      'id':id,
      'title':title
    }

    );

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                height: 250,
                fit: BoxFit.cover,
              )),
          Container(
            // color: Colors.black.withOpacity(0.4)
            // write Error because must be write in decoration when content decoration in code
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
