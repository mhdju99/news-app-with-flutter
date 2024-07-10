import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_1/models/ArticalModel.dart';
import 'package:news_1/services/news_servic.dart';
import 'package:news_1/widget/news_list_view.dart';

class NewsListBuilder extends StatefulWidget {
  String cato;
   NewsListBuilder({super.key,required this.cato});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  List<ArticalModel> articalList = [];
  bool isLoading = true;
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServic(dio: Dio()).getNews(cato:widget.cato);
  }

  // Future<void> getNews() async {
  //   articalList = await NewsServic(dio: Dio()).getNews();
  //   setState(() {});
  //   isLoading = false;
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return news_list_view(
            articalList: snapshot.data ?? [],
          );
        } else if (snapshot.hasError) {
          return const Text("data");
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}


// isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : news_list_view(
//             articalList: articalList,
//           );