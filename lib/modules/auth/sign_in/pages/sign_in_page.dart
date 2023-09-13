import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailFocusNode.addListener(() {
      setState(() {});
    });
    passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          emailFocusNode.unfocus();
          passwordFocusNode.unfocus();
        },
        child: Scaffold(
          backgroundColor: const Color(0xFF0B0F2F),
          body: Padding(
            padding: const EdgeInsets.only(top: 30, left: 12),
            child: Column(
              children: [
                Center(child: Image.asset('assets/images/logo_1x.png')),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode
                        .onUserInteraction, // Enable validation on user interaction
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          focusNode: emailFocusNode,
                          cursorColor: const Color(0xFF3D58F8),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: emailFocusNode.hasFocus
                                    ? const Color(0xFF3D58F8)
                                    : Colors.white60,
                                fontSize: 14),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white60),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3D58F8)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          focusNode: passwordFocusNode,
                          cursorColor: const Color(0xFF3D58F8),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: passwordFocusNode.hasFocus
                                    ? const Color(0xFF3D58F8)
                                    : Colors.white60,
                                fontSize: 14),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white60),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3D58F8)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Quên mật khẩu',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14, height: 18 / 12),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 60),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(72, 202, 231, 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Không có tài khoản!',
                      style: TextStyle(color: Colors.white60, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Đăng ký',
                        style:
                            TextStyle(color: Color(0xFF27BDF9), fontSize: 16),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Color(0xFF151D3B)),
                          child:
                              SvgPicture.asset('assets/images/icon_google.svg'),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF151D3B)),
                          child: SvgPicture.asset(
                              'assets/images/icon_facebook.svg'),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
