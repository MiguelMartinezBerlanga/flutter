import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto/Comments/comment.dart';

//

class CommentCard extends StatelessWidget {
  CommentCard(this.comment);
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = GoogleFonts.poppins();
    
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );


    final commentCardContent = new Card(
      child: ListTile(
      leading:Icon( Icons.account_box,
                    color: Colors.teal,
                    size: 50.0),
      title: Text(comment.name,
                style: headerTextStyle),
      subtitle: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         
              //new Icon(Icons.place, size: 11.0,),
              new Text(comment.email,
                style: regularTextStyle,
              ),
              
                  
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              height: 2.0,
              width: 96.0,
              color: Colors.tealAccent
              ),
            new Container( margin: new EdgeInsets.symmetric(vertical: 3.0)),
                  new Text(comment.body,
                    style: subHeaderTextStyle)
            ]
              
          
          ),
        
        //isThreeLine: true,
    )); 
    return commentCardContent;
  }
}
