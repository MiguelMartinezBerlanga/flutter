import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto/Comments/comment.dart';
import 'package:proyecto/Comments/commentCard.dart';
import 'package:proyecto/Post/post.dart';
import 'package:http/http.dart' as http;

List<Comment> _comments = List<Comment>();
final Post post = new Post();

class CommentList extends StatefulWidget {

  
  CommentList(post);
  
   @override
  _CommentsListState createState() => _CommentsListState();

  }

class _CommentsListState extends State<CommentList> {

   void initState() {
    super.initState();
    fetchComments();
  }

  void fetchComments() async
  {

    String url = "https://jsonplaceholder.typicode.com/posts/1/comments";
    var response = await http.get(url);
    //List<Comment> comments; 
    List<Comment> _comments1 = List<Comment>();
    if(response.statusCode == 200)
    {
      var commentsJson = json.decode(response.body);
      for(var commentJson in commentsJson)
      {
        _comments1.add(Comment.fromJson(commentJson));
      }

      
    }
    for(var i in _comments1)
    {
      if(post.id == i.postId)
      {
          _comments.add(i);
      }
    }
    

  }

  Widget build(BuildContext context) {   
    return new Flexible(
      child: new Container(
        color: new Color(0xFFF6F6F6),
        child: new ListView.builder(
          //itemExtent: 160.0,
          itemCount: _comments.length,
          itemBuilder: (context, index) => new CommentCard(_comments[index]),
        ),
      ),
    );
  }

 

}



  



 
