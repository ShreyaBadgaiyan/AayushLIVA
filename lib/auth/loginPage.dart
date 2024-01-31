import 'package:ayurscan/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
                'assets/images/login.png',
            fit: BoxFit.cover,),
      
            SizedBox(
              height: 20,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      labelText: 'Username'
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                      onPressed:(){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child:Text("Login"),
                  style: TextButton.styleFrom(
                      minimumSize:Size(120,40)),)
                ],
              ),
            )
            
            
      
          ],
        ),
      ),
    );
  }
}
