import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto/Comments/comentPage.dart';
import 'package:proyecto/Post/post.dart';
import 'package:proyecto/routes.dart';
//

class PostCard extends StatelessWidget {
  PostCard(this.post);
  final Post post;

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


    final postCardContent = new Card(
      child: ListTile(
      leading:Icon( Icons.account_box,
                    color: Colors.teal,
                    size: 50.0),
      title: Text(post.name,
                style: headerTextStyle),
      subtitle: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Icon(Icons.place, size: 11.0,),
              new Text(post.location,
                style: regularTextStyle,
              ),
              new Container(width: 56.0),
              new Icon(Icons.timer, size: 11.0),              
              new Text(post.hour,
                  style: regularTextStyle,
                 ),
               ]
              ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              height: 2.0,
              width: 96.0,
              color: Colors.tealAccent
              ),
            new Container( margin: new EdgeInsets.symmetric(vertical: 3.0)),
                  new Text(post.post,
                    style: subHeaderTextStyle)
            ]
              
          
          ),
        onTap: () => _navigateTo(context, post.id),  
        
        //isThreeLine: true,
    )); 
    return postCardContent;
  }
  _navigateTo(context, int id) {

     Navigator.push(context, MaterialPageRoute(builder: (context) => ComentPage(id)));
    Routes.navigateTo(
      context,
      '/detail/${post.id}',
      transition: TransitionType.fadeIn
    );
  }
}
    





      
    
    /*new Container(
      margin: new EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            children: <Widget>[

            new Container(
            margin: EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 4.0
            ),
            alignment: FractionalOffset.centerLeft,
            child: Icon(
              Icons.account_box,
               color: Colors.teal,
               size: 50.0,
            )
          ),
          new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(post.name,
            style: headerTextStyle,
          ),          
          new Row(
            children: <Widget>[
              new Icon(Icons.place, size: 11.0,),
              new Container(width: 4.0),
              new Text(post.location,
                style: regularTextStyle,
              ),
              new Container(width: 56.0),
              new Icon(Icons.timer, size: 11.0),
              new Container(width: 4.0),
              new Text(post.hour,
                style: regularTextStyle,
              ),
            ],
          ),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              height: 2.0,
              width: 96.0,
              color: Colors.tealAccent
          ),
        ]),       
            ],
          ),    
          new Container(height: 10.0),
          new Text(post.post,
              style: subHeaderTextStyle
          ),
        ],
      ),
    );*/
    

    /*return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 400.0,
            child: postCardContent,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0,),
            decoration: BoxDecoration(
                color: Color(0xFFDEDEDE),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                      color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                      ),
                ]
            ),
          ),
          
          

        ],
      ),
    );
  }
}*/
