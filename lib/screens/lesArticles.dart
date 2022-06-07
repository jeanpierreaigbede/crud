import 'package:flutter/material.dart';
import 'package:crud/models/app_component.dart';
import 'package:crud/models/article.dart';
import 'package:google_fonts/google_fonts.dart';
class LesArticles extends StatefulWidget {
   LesArticles({Key? key}) : super(key: key);

  @override
  _LesArticlesState createState() => _LesArticlesState();
}
class _LesArticlesState extends State<LesArticles> {

@override
  Widget build(BuildContext context) {
  List<Article> ListArticle = [
    Article(title: "Une image",author: "John Peter",date: "12-05-2022",pathImage: "image/welcome.jpg"),
    Article(title: "Une image",author: "John Peter",date: "12-05-2022",pathImage: "image/mixer.jpg"),
    Article(title: "Une image",author: "John Peter",date: "12-05-2022",pathImage: "image/microphone.jpg"),
    Article(title: "Une image",author: "John Peter",date: "12-05-2022",pathImage: "image/microphone1.jpg"),

  ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Text('Les articles',style: GoogleFonts.oswald(
          color: Colors.black,
          fontSize: 25,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back,size: 30,color: Colors.black,),
        ),
      ),
      backgroundColor: Colors.white,
      body:  ListView.builder(
          itemCount: ListArticle.length,
          itemBuilder: (context, item){
            Article article = ListArticle[item];
            return CardArticle(title:article.title ,author: article.author,date: article.date,pathIm: article.pathImage,);
          })
    );
  }
}
