import 'package:flutter/material.dart';
import 'package:project/shared/styles/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final auth = FirebaseAuth.instance;

  // SqlDb sqlDb = SqlDb();
  bool isPassword = true;
  var emailController = TextEditingController();
  var firstNAme = TextEditingController();
  var lastName = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(children: [
              Image(
                  height: 120.0,
                  image: AssetImage('assets/images/login_image.png')),
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                    cursorColor: MyColors.mainColor,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: firstNAme,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 5.0,
                ),
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      }
                      return null;
                    },
                    cursorColor: MyColors.mainColor,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: lastName,
                  ),
                ),
              ]),
              SizedBox(
                height: 10.0,
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
                height: 10.0,
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
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Color(0xffDA4C2D)),
                    // ),
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
                          isPassword ? Icons.visibility : Icons.visibility_off,
                        ),
                        color: MyColors.mainColor),
                  )),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: MyColors.mainColor),
                child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        // print(firstNAme.text);
                        // print(lastName.text);
                        // print(emailController.text);
                        // print(passwordController.text);
                        // print(Gender.text);
                        // int response = await sqlDb.insertData("INSERT INTO 'users' ('firstName', 'lastName', 'email', 'password') VALUES ('${firstNAme.text}', '${lastName.text}', '${emailController.text}', '${passwordController.text}')");
                        // print(response);
                        var user = await auth.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                        Navigator.pushNamed(context, '/');
                      }
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
