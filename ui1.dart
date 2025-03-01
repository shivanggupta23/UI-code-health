import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap Column in Scrollable View
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80), // Provide space from top

              // Logo & App Name
              Center(
                child: Column(
                  children: [
//                     Image.asset('assets/logo.png', height: 80), // Replace with your logo
                    SizedBox(height: 8),
                    Text(
                      "Adhicine",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Sign In Title
              Text("Sign In", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email, color: Colors.teal),
                  labelText: "Email",
                  hintText: "jamescordon@gmail.com",
                  errorText: "Incorrect Email Address", // Static error message
                ),
              ),
              SizedBox(height: 10),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.teal),
                  suffixIcon: Icon(Icons.visibility_off),
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 10),

              // Forgot Password Text
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),

              SizedBox(height: 20),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Text("Sign In", style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),

              SizedBox(height: 20),

              // OR Divider
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("OR"),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                ],
              ),

              SizedBox(height: 20),

              // Google Sign-In Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
//                   icon: Image.asset("assets/google_icon.png", height: 24), // Replace with actual Google icon
                  label: Text("Continue with Google", style: TextStyle(fontSize: 16)),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Sign Up Prompt
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "New to Adhicine? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40), // Provide bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}

