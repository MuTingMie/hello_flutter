import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  const PostShow(this.post,{ Key? key }) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Image.network(post.imageUrl),
          Container(
            padding: const EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              children: [
                Text(post.title, style: Theme.of(context).textTheme.titleLarge),
                Text(post.author, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 32.0),
                Text(post.description, style: Theme.of(context).textTheme.bodyLarge),
              ]
            ),
          )
        ],
      ),
    );
  }
}