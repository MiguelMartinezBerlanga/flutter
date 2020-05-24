
import 'package:flutter/material.dart';
import 'package:proyecto/Post/post.dart';
import 'package:proyecto/Post/postCard.dart';


class PostList extends StatelessWidget {

   static Post getPostById(int id){
    return posts.where((p) => p.id == id).first;
  }

  static final List<Post> posts = [
     Post(
        id: 1,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
      Post(
        id: 2,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
      Post(
        id: 3,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
      Post(
        id: 4,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
      Post(
        id: 5,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
      Post(
        id: 6,
        name: "Lacus sed viverra.",
        mail: "Non odio euismod",
        post: "Eget nullam non nisi est. Risus ultricies tristique nulla aliquet enim tortor at. Aliquam purus sit amet luctus venenatis lectus magna fringilla urna. Tristique risus nec feugiat in fermentum posuere urna nec. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Consectetur lorem donec massa sapien faucibus et molestie ac feugiat.", 
        hour: "12:08",
        location: "Saltiyork" 
      ),
    ];

   

  @override
  Widget build(BuildContext context) {
    return new Flexible(
      child: new Container(
        color: new Color(0xFFF6F6F6),
        child: new ListView.builder(
          //itemExtent: 160.0,
          itemCount: posts.length,
          itemBuilder: (context, index) => new PostCard(posts[index]),
        ),
      ),
    );
  }
}