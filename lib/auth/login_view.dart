import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;

  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final _auth = Get.put(AuthController());
    return Column(
      children: <Widget>[
        TextField(
          controller: _email,
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'อีเมล',
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          controller: _password,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'รหัสผ่าน',
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () async {
            final email = _email.text;
            final password = _password.text;
            
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF6200EE),
          ),
          child: const Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 16)),
        ),
        const SizedBox(
          height: 12,
        ),
        // const Divider(color: Colors.black),
        
      ],
    );
  }
}
