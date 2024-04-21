import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostsBloc()..fetchPosts(),
      child: MaterialApp(
        title: 'JSON API Demo',
        home: PostListScreen(),
      ),
    );
  }
}
class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});
}

class PostsBloc extends Cubit<List<Post>> {
  PostsBloc() : super([]);

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final posts = data.map((post) => Post(
        id: post['id'],
        title: post['title'],
        body: post['body'],
      )).toList();
      emit(posts);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postsBloc = context.read<PostsBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostsBloc, List<Post>>(
        builder: (context, posts) {
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
      ),
    );
  }
}

