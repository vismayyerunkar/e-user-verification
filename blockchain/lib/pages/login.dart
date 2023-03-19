import 'package:blockchain/pages/otpScreen.dart';
import 'package:blockchain/utils/colors.dart';
import 'package:blockchain/utils/functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController adhaarNumber = TextEditingController();
  FocusNode myFocusNode = new FocusNode();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final text = adhaarNumber.text;
      if (text.length == 12) {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OTPScreen()),
        );
      }
    }
  }

  @override
  void dispose() {
    adhaarNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: loginUI(context),
      ),
    );
  }

  Widget loginUI(BuildContext context) {
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
              key: _formKey,
              child: TextFormField(
                focusNode: myFocusNode,
                controller: adhaarNumber,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter 12 numbers';
                  }
                  if (value.length != 12) {
                    return 'Please enter exactly 12 numbers';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Adhaar Number",
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? blueColor : blueColor),
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
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _submitForm();
                getReq(adhaarNumber.text);
                // Navigator.pushNamed(context, '/otp');
              },
              child: Container(
                height: 45,
                width: 100,
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor),
                child: Center(
                  child: Text(
                    'Send OTP',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
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
