import 'package:custom_keyboard_action_package/custom_keyboard_action_package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _focusNode = FocusNode();

  bool isKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 32, 97),
        appBar: AppBar(
          title: Text('Login Sayfası'),
        ),
        body: CustomKeyboardAction(
          //color: Colors.amber,
          //iconSize: MediaQuery.of(context).size.height * 0.05,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          height: MediaQuery.of(context).size.height * 0.09,
          focusNode: _focusNode,
          isKeyboardVisible: isKeyboardVisible,
          onChanged: () {
            setState(() {
              isKeyboardVisible = _focusNode.hasFocus;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adı',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              // TextField(
              //   focusNode: _focusNode,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     hintText: 'Şifre',
              //     filled: true,
              //     fillColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 11),
              ElevatedButton(
                onPressed: () {},
                child: Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
