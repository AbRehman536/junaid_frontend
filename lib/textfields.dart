import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
            color: Colors.blue
        ),),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text("Email"),
                hint: Text("abdullah@gmail.com"),
                prefixIcon: Icon(Icons.email),
                suffix: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: isPasswordVisible,
              controller: passwordController,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  label: Text("Password"),
                  hint: Text("123456789"),
                  prefixIcon: Icon(Icons.lock),
                  suffix: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none
              ),
              ),
              onTap: (){
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){}, child: Text("Forget Password?"
                ,style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Colors.red
              ),)),
            ),
            SizedBox(
              height: 46,width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(emailController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Email is Required")));
                  return;
                }
                if(emailController.text.contains("@")){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Email is Required")));
                  return;
                }
                if(passwordController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password is Required")));
                  return;
                }
                if(passwordController.text.length < 8){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                  return;
                }
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                  , child: Text("Login")),
            ),
            SizedBox(height: 10,),
            Text("Don't have account ? "
              ,style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.black
            ),),
            TextButton(onPressed: (){}, child: Text("SignUp"
              ,style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.green
              ),))
          ],
        ),
      ),
    );
  }
}
