import 'package:ayurscan/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name="";
  bool changeButton=false;
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
                    "Welcome $name",
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
                    onChanged:(value){
                      name=value;
                      setState(() {

                      });

                    },
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



                  InkWell(
                    onTap: ()async{
                      setState(() {
                        changeButton=true;
                      });
                      
                      await Future.delayed(Duration(seconds: 3));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 3),
                      width: changeButton?50: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.verified):Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: changeButton
                          ?BoxShape.circle
                        :BoxShape.rectangle,
                        color: Colors.green,
                        // borderRadius: BorderRadius.circular(changeButton?20:8)
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //     onPressed:(){
                  //       setState(() {
                  //       });
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child:Text("Login"),
                  // style: TextButton.styleFrom(
                  //     minimumSize:Size(120,40)),)
                ],
              ),
            )
            
            
      
          ],
        ),
      ),
    );
  }
}
