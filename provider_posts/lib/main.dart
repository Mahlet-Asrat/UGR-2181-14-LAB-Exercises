import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:provider/provider.dart';

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});
}

class PostsProvider extends ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      _posts = data.map((post) => Post(
        id: post['id'],
        title: post['title'],
        body: post['body'],
      )).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostsProvider(),
      child: MaterialApp(
        title: 'JSON API Provider',
        home: PostListScreen(),
      ),
    );
  }
}

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postsProvider = context.read<PostsProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: FutureBuilder<void>(
        future: postsProvider.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading posts'));
          } else {
            return ListView.builder(
              itemCount: postsProvider.posts.length,
              itemBuilder: (context, index) {
                final post = postsProvider.posts[index];
                return ListTile(
                  title: Text(post.title, style: TextStyle(color: Color.fromARGB(255, 125, 94, 1), fontSize: 23),),
                  subtitle: Text(post.body, style: TextStyle(color: Colors.blue, fontSize: 16)),
                );
              },
            );
          }
        },
      ),
    );
  }
}

