import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_1/models/ArticalModel.dart';
import 'package:news_1/services/news_servic.dart';
import 'package:news_1/widget/category_list_view.dart';
import 'package:news_1/widget/catpgare_card.dart';
import 'package:news_1/widget/list_item.dart';
import 'package:news_1/widget/news_list_bilder.dart';
import 'package:news_1/widget/news_list_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "cloud",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: category_list_view(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListBuilder(cato: "general"),
          ],
        ),
      ),
      // category_list_view(),
    );
  }
}
