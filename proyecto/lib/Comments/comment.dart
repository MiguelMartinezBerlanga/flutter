
//import 'dart:html';

class Comment{
   int postId;
   int commentId;
   String name;
   String email;
   String body;
   //final String location;
    
  Comment({this.postId, this.commentId, this.name, this.email, this.body});

  Comment.fromJson(Map<String, dynamic> json){
    postId = json['postId'];
    commentId = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];

  }




}