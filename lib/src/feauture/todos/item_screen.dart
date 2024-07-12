import 'package:flutter/material.dart';
import 'package:gallery_app/src/feauture/todos/card_widget.dart';
import 'package:gallery_app/src/feauture/todos/data/new_item.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          final newsItem = item[index];
          return NewsItem(
            newsTitle: newsItem.newsTitle,
            imageURL: newsItem.imageURL,
            data: newsItem.data,
            description: newsItem.description,
          );
        },
      ),
    );
  }
}
