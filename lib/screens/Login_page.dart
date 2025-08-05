import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool Isvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStackImage(),
            _buildTextFild(),
            _LogingButton(),
            Text(
              "Forgot Password?",
              style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " Signup",
                      style: TextStyle(
                        color: Color.fromRGBO(143, 148, 251, 1),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _LogingButton() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(143, 148, 251, 1),
            Color.fromRGBO(143, 148, 251, .6),
          ],
        ),
      ),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildTextFild() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(143, 148, 251, .2),
              blurRadius: 20.0,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Email or Phone Number"),
            ),
            Divider(thickness: 0.5),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                hintText: "Password",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStackImage() {
    return Stack(
      children: [
        Container(
          height: 370,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          height: 200,
          left: 50,
          child: Image(image: AssetImage("assets/images/light-1.png")),
        ),
        Positioned(
          height: 150,
          left: 170,
          child: Image(image: AssetImage("assets/images/light-2.png")),
        ),
        Positioned(
          height: 60,
          width: 60,
          right: 50,
          top: 90,
          child: Image(
            image: AssetImage("assets/images/clock.png"),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 140,
          top: 200,
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
