
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _rePassword;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _rePassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 12,
        ),
        TextField(
          controller: _rePassword,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'รหัสผ่านอีกครั้ง',
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: () async {
            final email = _email.text;
            final password = _password.text;
            final repassword = _rePassword.text;  
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF6200EE),
          ),
          child: const Text('สมัครสมาชิก', style: TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}
