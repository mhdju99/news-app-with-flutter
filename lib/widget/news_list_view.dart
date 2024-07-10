import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_1/models/ArticalModel.dart';
import 'package:news_1/services/news_servic.dart';
import 'package:news_1/widget/list_item.dart';

class news_list_view extends StatelessWidget {
  List<ArticalModel> articalList;
  news_list_view({
    super.key,
    required this.articalList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => list_item(data: articalList[index]),
          childCount: articalList.length),
    );
  }
}
