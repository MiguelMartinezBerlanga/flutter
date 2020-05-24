import 'package:flutter/material.dart';
import 'package:proyecto/Comments/commentList.dart';
import 'package:proyecto/Post/post.dart';
import 'package:proyecto/Post/postList.dart';
import '../appBar.dart';

class ComentPage extends StatelessWidget {

  final Post post;

  
  ComentPage(int id) : post = PostList.getPostById(id);

  
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new CommentList(post),
          GradientAppBar("Comments"),
        ],
      ),
    );
  }
}
