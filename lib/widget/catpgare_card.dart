// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_1/views/home_page.dart';
import 'package:news_1/models/category_model.dart';

class catpgare_card extends StatelessWidget {
  const catpgare_card({
    Key? key,
    required this.catogry,
  });
  final CategoryModel catogry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(catogry.imageAssetUrl)),
            color: Colors.green,
            borderRadius: BorderRadius.circular(12)),
        width: 200,
        height: 120,
        child: Center(
            child: Text(catogry.categoyName,
                style: TextStyle(color: Colors.white, fontSize: 18))),
      ),
    );
  }
}
