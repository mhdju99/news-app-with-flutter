import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_1/models/ArticalModel.dart';
import 'package:news_1/services/news_servic.dart';
import 'package:news_1/widget/list_item.dart';
import 'package:news_1/widget/news_list_bilder.dart';

class CategoryPage extends StatefulWidget {
  final String cato;
  const CategoryPage({super.key, required this.cato});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.cato),
        ),
        body: CustomScrollView(
          slivers: [
            NewsListBuilder(cato: widget.cato),
          ],
        )

        //  ListView.builder(itemBuilder: (context, index) {
        //   return list_item();
        // }),
        );
  }
}
