import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:funlearn/homepage.dart';
import 'package:get/get.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => LoginPageViewState();
}

class LoginPageViewState extends State<LoginPageView> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool obscure = true;
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
                      "Login",
                      maxFontSize: 30,
                      minFontSize: 25,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("UserName")),
                      controller: username,
                    ),
                    TextFormField(
                      obscureText: obscure,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              icon: const Icon(Icons.remove_red_eye_outlined)),
                          border: const OutlineInputBorder(),
                          label: const Text("Password")),
                      controller: password,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Create account")),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        login(username.text, password.text);
                      },
                      label: const Text("Login"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  login(username, password) async {
    // var pref = await SharedPreferences.getInstance();
    if (username == "user" && password == "user") {
      Get.off(() => const HomePageView());
    } else {
      Get.snackbar(
        //methoid 1
        "Invalid Credentials!",
        "Please check the details entered!",
        icon: const Icon(Icons.error),
      );
    }
    // Get.showSnackbar(const GetSnackBar(//method 2
    //   title: "Invalid Credentials!",
    //   message: "Please check the details entered!",
    //   icon: Icon(Icons.error),
    //   duration: Duration(seconds: 5),
    // ));
  }
}
