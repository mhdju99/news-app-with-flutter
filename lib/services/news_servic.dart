// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:news_1/models/ArticalModel.dart';

class NewsServic {
  final Dio dio;
  NewsServic({
    required this.dio,
  });

  Future<List<ArticalModel>> getNews({required String cato}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=71820e65400045c9bcbc021459d669cf&category=$cato");
    // 'https://newsapi.org/v2/top-headlines?category=technology&language=ar&sortBy=popularity&apiKey=71820e65400045c9bcbc021459d669cf');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articals = jsonData["articles"];
    List<ArticalModel> articalList = [];
    for (var artical in articals) {
      ArticalModel articalModel = ArticalModel(
        titel: artical["title"],
        image: artical["urlToImage"],
        url: artical["url"],
      );
      articalList.add(articalModel);
    }
    print(
      articalList[0].titel,
    );
    return articalList;
  }
}
