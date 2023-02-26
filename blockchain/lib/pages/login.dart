import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ProgressHUD(
          inAsyncCall: isApiCallProcess,
          key: UniqueKey(),
          opacity: 0.3,
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Image.asset(
                "assets/images/login.png",
                width: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 50,
              bottom: 30,
            ),
            child: Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 23, 76, 119)),
            ),
          ),
          //Login
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  labelText: "Adhaar Number",
                  labelStyle: MaterialStateTextStyle.resolveWith(
                      (Set<MaterialState> states) {
                    final Color color = states.contains(MaterialState.error)
                        ? Theme.of(context).colorScheme.error
                        : Colors.blue;
                    return TextStyle(
                      color: color,
                    );
                  }),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 23, 76, 119),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 23, 76, 119),
                    ),
                  ),
                ),
                autovalidateMode: AutovalidateMode.always,
              ),
            ),
          ),
          // FormHelper.inputFieldWidget(context, "username", "Adhaar Number",
          //     (onValidateVal) {
          //   if (onValidateVal.isEmpty) {
          //     return "Username can't be empty. ";
          //   }
          //   return null;
          // },
          //     (onSavedVal) => {
          //           username = onSavedVal,
          //         },
          //     borderFocusColor: const Color.fromARGB(255, 23, 76, 119),
          //     showPrefixIcon: true,
          //     prefixIcon: const Icon(Icons.person),
          //     prefixIconColor: const Color.fromARGB(255, 23, 76, 119),
          //     borderColor: const Color.fromARGB(255, 23, 76, 119),
          //     textColor: const Color.fromARGB(255, 23, 76, 119),
          //     hintColor:
          //         const Color.fromARGB(255, 23, 76, 119).withOpacity(0.7),
          //     borderRadius: 10),
          // password
          // Padding(
          //   padding: const EdgeInsets.only(top: 10),
          //   child: FormHelper.inputFieldWidget(
          //     context,
          //     prefixIcon: const Icon(Icons.key),
          //     "password",
          //     "Password",
          //     (onValidateVal) {
          //       if (onValidateVal.isEmpty) {
          //         return "Password can't be empty. ";
          //       }
          //       return null;
          //     },
          //     (onSavedVal) => {
          //       password = onSavedVal,
          //     },
          //     borderFocusColor: const Color.fromARGB(255, 23, 76, 119),
          //     showPrefixIcon: true,
          //     prefixIconColor: const Color.fromARGB(255, 23, 76, 119),
          //     borderColor: const Color.fromARGB(255, 23, 76, 119),
          //     textColor: const Color.fromARGB(255, 23, 76, 119),
          //     hintColor:
          //         const Color.fromARGB(255, 23, 76, 119).withOpacity(0.7),
          //     borderRadius: 10,
          //     obscureText: hidePassword,
          //     suffixIcon: IconButton(
          //       color: const Color.fromARGB(255, 23, 76, 119),
          //       onPressed: () {
          //         setState(() {
          //           hidePassword = !hidePassword;
          //         });
          //       },
          //       icon: Icon(
          //         hidePassword ? Icons.visibility_off : Icons.visibility,
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 25, top: 10),
          //     child: RichText(
          //       text: TextSpan(
          //         style: const TextStyle(
          //             color: Color.fromARGB(255, 142, 55, 55), fontSize: 14),
          //         children: [
          //           TextSpan(
          //               text: 'Forget Password ?',
          //               style: const TextStyle(
          //                 color: Color.fromARGB(255, 23, 76, 119),
          //                 decoration: TextDecoration.underline,
          //               ),
          //               recognizer: TapGestureRecognizer()
          //                 ..onTap = () {
          //                   print('Forget Password');
          //                 })
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton("Send OTP", () {
              Navigator.pushNamed(context, '/otp');
            },
                btnColor: HexColor("#283b71"),
                borderRadius: 10,
                borderColor: Colors.transparent),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 23, 76, 119),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 25, top: 10),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                      color: Color.fromARGB(176, 23, 76, 119), fontSize: 14),
                  children: [
                    TextSpan(text: "Don't have an account? "),
                    TextSpan(
                        text: "SignUp!",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 23, 76, 119),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, "/details");
                          })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
