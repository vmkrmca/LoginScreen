import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Screen",
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mobileNumberController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "LoginScreen",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontFamily: 'Insigne'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          profilePicture(),
          const SizedBox(
            height: 15,
          ),
          inputFieldText(mobileNumberController, "Enter Mobile Number",
              const Icon(Icons.phone_android), TextInputType.number, false),
          const SizedBox(
            height: 15,
          ),
          inputFieldText(passwordController, "Enter Password",
              const Icon(Icons.lock), TextInputType.text, true),
          const SizedBox(
            height: 15,
          ),
          signInButton(),
          const SizedBox(
            height: 15,
          ),
          socialMediaLogins()
        ],
      ),
    );
  }
}

Widget socialMediaLogins() {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              print("I Clicked on Google Icon");
            },
            child: Image.asset(
              'assets/images/google.png',
              height: 150,
              width: 150,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
          onTap: () {

            print("I Clicked on Apple Icon");
          },
            child: Image.asset(
              'assets/images/apple.png',
              height: 150,
              width: 150,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {

              print("I Clicked on Facebook Icon");
            },
            child: Image.asset(
              'assets/images/facebook.png',
              height: 150,
              width: 150,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget profilePicture() {
  return Center(
    child: Image.asset(
      'assets/images/profile.png',
      height: 150,
      width: 150,
    ),
  );
}

Widget inputFieldText(TextEditingController mobileNumberController,
    String hintText, Icon icon, TextInputType textData, bool isObscureText) {
  return Container(
    margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
    child: TextField(
      controller: mobileNumberController,
      keyboardType: textData,
      obscureText: isObscureText,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
      ),
    ),
  );
}

Widget signInButton() {
  return ElevatedButton(
    onPressed: () {},
    child: const Text(
      "SignIn",
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}
