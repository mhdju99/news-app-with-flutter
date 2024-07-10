import 'package:flutter/material.dart';
import 'package:news_1/models/category_model.dart';
import 'package:news_1/views/categore_page.dart';
import 'package:news_1/widget/catpgare_card.dart';

class category_list_view extends StatelessWidget {
  category_list_view({
    super.key,
  });
  List<CategoryModel> catogeys = [
    CategoryModel(categoyName: 'business', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoyName: 'entertainment', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoyName: 'health', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoyName: 'science', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoyName: 'sports', imageAssetUrl: 'assets/health.avif'),
    CategoryModel(categoyName: 'technology', imageAssetUrl: 'assets/health.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: catogeys.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  CategoryPage(cato: catogeys[i].categoyName ,)));
              },
              child: catpgare_card(
                catogry: catogeys[i],
              ),
            );
          }),
    );
  }
}
