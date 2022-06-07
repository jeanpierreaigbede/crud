import 'package:flutter/material.dart';
import 'package:crud/models/app_component.dart';
import 'package:crud/screens/sign_up.dart';
import 'package:crud/screens/lesArticles.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10,right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const  SizedBox(height: 40,),
             Container(
               padding: const EdgeInsets.only(left: 0,right: 30),
               child: Row(
                 children: [
                   IconButton(
                       onPressed: (){
                         Navigator.of(context).pop(context);
                       }, icon:const Icon(Icons.arrow_back,color: Color(0xFF363f93),size: 35,)
                   ),
                 ],
               ),
             ),
             const SizedBox(height: 30,),
             TextWidget(text: "Here to Get !",fontSize: 35,isUnderline: false,),
             const SizedBox(height: 20,),
             TextInput(textString: "Email",isobscure: false,textController: emailController,),
             const SizedBox(height: 20,),
             TextInput(textString: "Mot de passe",textController: password,isobscure: true,),
           const  SizedBox(height: 40,),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   TextWidget(text : "Se connecter",fontSize: 20,isUnderline: false,),
                   InkWell(
                     onTap: (){
                       login();
                     },
                     child:Container(
                       height: 80,
                       width: 80,
                       child: const Icon(Icons.arrow_forward,size: 30,color: Colors.white,),
                       decoration:const BoxDecoration(
                         shape: BoxShape.circle,
                         color:  Color(0xFF363f93),
                       ),
                     ) ,
                   )
                 ],
               ),
             ),
           const  SizedBox(height: 40,),
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return SignUp();
                       }));
                     },
                     child: TextWidget(text: "S'Inscrire ",isUnderline: true,fontSize: 20,),
                   ),
                   InkWell(
                     onTap: null,
                     child: TextWidget(text:"Mot de passe oublié",fontSize: 20,isUnderline: true,),
                   )
                 ],
               ),
             )
           ],
          ),
        ),
      ),
    );
  }
  void login(){
    if(emailController.text.isNotEmpty && password.text.isNotEmpty)
      {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LesArticles();
        }));
      }
    else{
      print("Veuillez remplir tous les champs");
    }

  }
}
