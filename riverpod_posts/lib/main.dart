import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'JSON API Demo',
        home: PostListScreen(),
      ),
    ),
  );
}

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});
}

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((post) => Post(
      id: post['id'],
      title: post['title'],
      body: post['body'],
    )).toList();
  } else {
    throw Exception('Failed to load posts');
  }
});
class PostListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: posts.when(
        data: (postList) {
          return ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              final post = postList[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error loading posts')),
      ),
    );
  }
}

