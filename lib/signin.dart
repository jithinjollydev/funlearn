import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:funlearn/homepage.dart';
import 'package:funlearn/loginpage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = context.mediaQuery.size;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Card(
          child: SizedBox(
            height: size.height / 2,
            width: size.width - 40,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AutoSizeText(
                    "Sign Up",
                    maxFontSize: 30,
                    minFontSize: 25,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("UserName")),
                    controller: username,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Password")),
                    controller: password,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => const LoginPageView());
                        },
                        child: const Text("Log In")),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      signup(username.text, password.text);
                    },
                    label: const Text("Register"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  void signup(String username, String password) async {
    var pref = await SharedPreferences.getInstance();
    if (pref.containsKey("username") && pref.containsKey("password")) {
      if (pref.getString("username") == username &&
          pref.getString("password") == password) {
        Get.snackbar(
          //methoid 1
          "Existing User!",
          "The user already exists!",
          icon: const Icon(Icons.error),
        );
      } else {
        savedata(pref, username, password);
        Get.off(() => const HomePageView());
      }
    } else {
      savedata(pref, username, password);
    }
  }

  void savedata(SharedPreferences pref, String username, String password) {
    pref.setString("username", username);
    pref.setString("password", password);
  }
}
