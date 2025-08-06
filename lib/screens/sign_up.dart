import 'package:assignment/screens/Login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

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

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Already have an Account",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        " Login",
                        style: TextStyle(
                          color: Color.fromRGBO(143, 148, 251, 1),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _LogingButton() {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Color.fromRGBO(143, 148, 251, 1),
              content: Text('Sign Up Successfully'),
              duration: Duration(seconds: 2),
            ),
          );
          clearTextField();
        }
        return;
      },
      child: Container(
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
            "Sign up",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFild() {
    return Form(
      key: _formKey,
      child: Padding(
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _firstNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter First Name';
                  }
                },
                decoration: InputDecoration(hintText: "First Name"),
              ),
              Divider(thickness: 1),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _lastNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Last Name';
                  }
                },
                decoration: InputDecoration(hintText: "Last Name"),
              ),
              Divider(thickness: 1),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter  Email";
                  }
                  if (!value.contains('@')) {
                    return 'Enter a valid email with @';
                  }
                  if (!value.contains('.com')) {
                    return 'Enter a valid email with .com ';
                  }
                },
                decoration: InputDecoration(hintText: "Email or Phone Number"),
              ),
              Divider(thickness: 1),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _passController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a Password";
                  }
                  if (value!.length < 6) {
                    return "Enter a Password more than 6 Character";
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                  hintText: "Password",
                ),
              ),
            ],
          ),
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

  void clearTextField() {
    _firstNameController.clear();
    _lastNameController.clear();
    _emailController.clear();
    _passController.clear();
  }
}
