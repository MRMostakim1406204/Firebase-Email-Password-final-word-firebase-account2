import 'package:firebase_account2/Function/authFuntions.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String fullname = "";
  bool login = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            login? Container()
            : TextFormField(
              key: ValueKey("Fullname"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Full Name",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please Enter Full Name";
                }else{
                  return null;
                }
              },
              onSaved: (value){
                setState(() {
                  fullname = value!;
                });
              },
            ),
            SizedBox(height: 15,),
            TextFormField(
              key: ValueKey("email"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email",
              ),
              validator: (value){
                if(value!.isEmpty || !value.contains("@")){
                  return "Please Enter valid Email";
                }else{
                  return null;
                }
              },
              onSaved: (value){
                setState(() {
                  email = value!;
                });
              },
            ),
            SizedBox(height: 15,),
            TextFormField(
              key: ValueKey("password"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
              ),
              validator: (value){
                if(value!.length<6){
                  return "Please Enter Password of min length 6";
                }else{
                  return null;
                }
              },
              onSaved: (value){
                setState(() {
                  password = value!;
                });
              },
            ),
            SizedBox(height: 70,),
            Container(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()async{
                  if (_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                    login
                    ? AuthServices.signinUser(email, password, context)
                    : AuthServices.singupUser(email, password, fullname, context);
                  }
                }, 
                child: Text(login? "Login" : "Signup")),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: (){},
              child: Text(login ? "Don't have an account? Signup" : "Already have an account? Login"))
          ],
        ),
      )),
    );
  }
}