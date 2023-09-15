import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Sex { male, female }

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneNumberFocusNode = FocusNode();
  final birthDayFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  Sex? sex;
  DateTime date = DateTime(2023, 9, 13);

  @override
  void initState() {
    super.initState();
    addListenerFocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    disposeFocusNode();
  }

  void addListenerFocusNode() {
    nameFocusNode.addListener(() {
      setState(() {});
    });
    emailFocusNode.addListener(() {
      setState(() {});
    });
    phoneNumberFocusNode.addListener(() {
      setState(() {});
    });
    birthDayFocusNode.addListener(() {
      setState(() {});
    });
    passwordFocusNode.addListener(() {
      setState(() {});
    });
    confirmPasswordFocusNode.addListener(() {
      setState(() {});
    });
  }

  void disposeFocusNode() {
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    birthDayFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {},
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFF0B0F2F),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 12),
              child: Column(
                children: [
                  Center(child: Image.asset('assets/images/logo_1x.png')),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 30),
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode
                          .onUserInteraction, // Enable validation on user interaction
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            focusNode: nameFocusNode,
                            cursorColor: const Color(0xFF3D58F8),
                            decoration: InputDecoration(
                              labelText: 'Họ và tên',
                              labelStyle: TextStyle(
                                  color: nameFocusNode.hasFocus
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
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            focusNode: phoneNumberFocusNode,
                            cursorColor: const Color(0xFF3D58F8),
                            decoration: InputDecoration(
                              labelText: 'Số điện thoại',
                              labelStyle: TextStyle(
                                  color: phoneNumberFocusNode.hasFocus
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: ListTile(
                                  title: const Text(
                                    'Nam',
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  leading: Radio<Sex>(
                                    value: Sex.male,
                                    groupValue: sex,
                                    onChanged: (value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Flexible(
                                child: ListTile(
                                  title: const Text(
                                    'Nữ',
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  leading: Radio<Sex>(
                                    value: Sex.female,
                                    groupValue: sex,
                                    onChanged: (value) {
                                      setState(() {
                                        sex = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                                locale: const Locale('vi'),
                              );
                            },
                            child: TextFormField(
                              enabled: false,
                              focusNode: birthDayFocusNode,
                              decoration: const InputDecoration(
                                labelText: 'Ngày sinh',
                                labelStyle: TextStyle(
                                    color: Colors.white60, fontSize: 14),
                                disabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white60),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            focusNode: passwordFocusNode,
                            cursorColor: const Color(0xFF3D58F8),
                            decoration: InputDecoration(
                              labelText: 'Mật khẩu',
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
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            focusNode: passwordFocusNode,
                            cursorColor: const Color(0xFF3D58F8),
                            decoration: InputDecoration(
                              labelText: 'Xác nhận mật khẩu',
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 60),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(72, 202, 231, 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Hoàn Tất',
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
                        'Tài khoản đã được đăng ký!',
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: const Text(
                          'Đăng nhập',
                          style:
                              TextStyle(color: Color(0xFF27BDF9), fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
