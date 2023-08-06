import '../widgets/category_item.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // appBar: AppBar(
      //     title: const Text('دليل سياحي')),


        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //يحدد عرض كل عنصر على الشاشة على حسب القيمه التي سوف ارسلها له
              maxCrossAxisExtent: 250,
              childAspectRatio: 7/8,
              mainAxisSpacing: 10, //space row
              crossAxisSpacing: 10 ,// // space coulmn
              // crossAxisCount: 2,

          ),
          children: Categories_data.map(
                (categoryData) =>
                    categoryItem(categoryData.id,categoryData.title, categoryData.imageUrl)
          ).toList(),
        )

    );
  }
}
