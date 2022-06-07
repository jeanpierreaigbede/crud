import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crud/screens/sign_in.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Bienvenue !',style: GoogleFonts.oswald(
            textStyle:const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            )
          ),),
          Container(
            height: MediaQuery.of(context).size.height/3,
            margin: const EdgeInsets.all(15),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
             color: Colors.teal,
              image: DecorationImage(
                image: AssetImage('image/welcome.jpg',),
                fit: BoxFit.cover
              )
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SignIn();
              }));
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.7,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color:const Color(0xFF363f93),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Text('Get Started',textAlign: TextAlign.center,style: GoogleFonts.oswald(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                  )
              ),),
            ),
          )
        ],
      )
    );
  }
}

