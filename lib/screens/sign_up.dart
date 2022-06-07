import 'package:flutter/material.dart';
import 'package:crud/models/app_component.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon:const Icon(Icons.arrow_back,color: Colors.black,)
              ),
              const SizedBox(height: 35,),
              TextWidget(text: "S'inscrire !",isUnderline: false,fontSize: 30,),
              const SizedBox(height: 35,),
              TextInput(textString: "Nom",textController: nameController,),
              TextInput(textString: "Email",textController: emailController,),
              TextInput(textString: 'Mot de passe',textController: password,),
              TextInput(textString: "Confirmer mot de passe",textController: confirmPassword,),
              const SizedBox(height: 35,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   const SizedBox(width: 30,),
                    InkWell(
                      onTap: (){
                        enregistrement();
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
            ],
          ),
        ),
      ),
    );
  }
  void enregistrement(){

  }
}
