// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_1/models/ArticalModel.dart';

class list_item extends StatelessWidget {
  final ArticalModel data;
  const list_item({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: data.image != null
                ? Image.network(
                    data.image!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  )
                : Image.asset(
                    "assets/no image.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(data.titel,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(
            height: 2,
          ),
          Text(data.titel,
              style: const TextStyle(color: Colors.grey, fontSize: 14))
        ],
      ),
    );
  }
}
