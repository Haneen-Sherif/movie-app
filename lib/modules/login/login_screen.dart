import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/styles/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
  bool isPassword = true;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image(
                    height: 150.0,
                    image: AssetImage('assets/images/login_image.png')),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email address must not be empty";
                    }
                    return null;
                  },
                  cursorColor: MyColors.mainColor,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.mainColor),
                    ),
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon:
                        Icon(Icons.email_outlined, color: MyColors.mainColor),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      }
                      return null;
                    },
                    cursorColor: MyColors.mainColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon:
                          Icon(Icons.lock_open, color: MyColors.mainColor),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: Icon(
                            isPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          color: MyColors.mainColor),
                    )),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: MyColors.mainColor),
                  child: MaterialButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          // print(emailController.text);
                          // print(passwordController.text);
                          var user = await auth.signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text);
                          if (user != null) {
                            Navigator.pushNamed(context, '/home');
                          }
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signUp');
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: MyColors.mainColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
