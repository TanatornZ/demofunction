import 'package:demofunc/auth/login_view.dart';
import 'package:demofunc/auth/register_view.dart';
import 'package:flutter/material.dart';



class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final isSelected = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Image(
                image: AssetImage('assets/icon/timetable.png'),
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: width * 0.8,
                height: height * 0.5,
                child: Column(
                  children: [
                    ToggleButtons(
                      color: Colors.black.withOpacity(0.60),
                      selectedColor: const Color(0xFF6200EE),
                      selectedBorderColor: const Color(0xFF6200EE),
                      fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                      splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                      hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                      borderRadius: BorderRadius.circular(4.0),
                      constraints: const BoxConstraints(minHeight: 36.0),
                      isSelected: isSelected,
                      onPressed: (index) {
                        // Respond to button selection
                        setState(() {
                          if (index == 0) {
                            isSelected[0] = true;
                            isSelected[1] = false;
                          } else {
                            isSelected[0] = false;
                            isSelected[1] = true;
                          }
                        });
                      },
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('เข้าสู่ระบบ'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('สมัครสมาชิก'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: width * 0.6,
                      height: height * 0.35,
                      // color: Colors.black,
                      child: isSelected[0]
                          ? const AnimatedSwitcher(
                              duration: Duration(milliseconds: 250),
                              child: LoginView(),
                            )
                          : const AnimatedSwitcher(
                              duration: Duration(milliseconds: 250),
                              child: RegisterView(),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
