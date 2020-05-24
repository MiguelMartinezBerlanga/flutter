import 'package:flutter/material.dart';
import 'package:proyecto/Post/postList.dart';
import '../appBar.dart';


class Principal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("Post"),
          PostList()
        ],
      ),
    );
  }
}