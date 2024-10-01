import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/umodel_background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
              width: 400,
              height: 450,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 50),
                    child: Form(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.white),
                                hintText: "Username",
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 0.8),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              obscureText: true,
                              cursorColor: Colors.white,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.white),
                                hintText: "Password",
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: screenWidth,
                            height: 60,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(28, 72, 139, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                              onPressed: () {
                                debugPrint("1");
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    ));
  }
}
