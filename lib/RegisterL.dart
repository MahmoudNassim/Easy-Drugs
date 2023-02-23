import 'package:flutter/material.dart';

class RegisterL extends StatelessWidget {
    static const RouteName = 'RegisterL';
var emailController = TextEditingController();
var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Image(
                image : AssetImage(('Assets/Images/E5.png'),                
                ),
                height : 80 ,
                width : 80 ,
              ),
              centerTitle:true ,
      ),
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Center(
             child: SingleChildScrollView(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
               ) ,  
               SizedBox(
                height: 20,
               ),
               //EmailAddress
               TextFormField(
                controller: emailController,
                keyboardType:TextInputType.emailAddress ,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),  
                  prefixIcon: Icon(
                  Icons.email,
                 ),
                )
               ), 
               SizedBox(
                height: 15,
               ),
                       //PAssword
               TextFormField(
                controller: passwordController,
                keyboardType:TextInputType.visiblePassword ,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),  
                  prefixIcon: Icon(
                  Icons.lock,
                 ),
                 suffixIcon: Icon(
                  Icons.remove_red_eye,
                 ),
                )
               ),
               SizedBox(
                height: 20,
               ),
                              TextFormField(
                controller: passwordController,
                keyboardType:TextInputType.visiblePassword ,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),  
                  prefixIcon: Icon(
                  Icons.lock,
                 ),
                 suffixIcon: Icon(
                  Icons.remove_red_eye,
                 ),
                )
               ),
               SizedBox(
                height: 20,
               ), 
 
               //Register BUTTON
               Container(
                width: double.infinity,
                color: Colors.blue,
                 child: MaterialButton(onPressed: (){
                  print(emailController.text);
                  print(passwordController.text);
                 },
                 child: Text(
                  'REGISTER NOW',
                  style:TextStyle(
                    color: Colors.white
                  ) ,
                 ),),
               ),
                   ]),
             ),
           ),
         ),
    );
  }
}