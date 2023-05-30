import 'package:flutter/material.dart';
import 'package:registrastion_form_for_a_admission/extenshion_on_string.dart';
import 'package:flutter/services.dart';
import 'other_login_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RegistrationFormForAAdmission(),
    );
  }
}

class RegistrationFormForAAdmission extends StatefulWidget {
  const RegistrationFormForAAdmission({super.key});

  @override
  State<RegistrationFormForAAdmission> createState() =>
      _RegistrationFormForAAdmissionState();
}

class _RegistrationFormForAAdmissionState
    extends State<RegistrationFormForAAdmission> {
  var globalKeyForForm = GlobalKey<FormState>();
  TextEditingController passwordEditer = TextEditingController();
  String? passwordHelperText = 'Password must be 8 Characters';
  String? passwordHelperTextForRepeat = 'Password must be 8 Characters';
  Color helperTextColor = Colors.grey.shade600;
  Color textFieldColor = const Color.fromARGB(255, 5, 171, 248);
  @override
  Widget build(BuildContext context) {
    var sizeOfMyScreen = MediaQuery.of(context).size;
    double heightOfMyScreen =
        sizeOfMyScreen.height - (kBottomNavigationBarHeight + kToolbarHeight);
    double widthOfMyScreen = sizeOfMyScreen.width;
    double widthOfTextFormField = widthOfMyScreen * 0.65;

    return Scaffold(
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: heightOfMyScreen * 0.03,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: widthOfMyScreen * 0.1),
                  child: const SizedBox(
                    child: Text('SignUp',
                        style: TextStyle(
                            color: Color.fromARGB(255, 47, 123, 246),
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: heightOfMyScreen * 0.03,
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: widthOfMyScreen * 0.1),
                child: Container(
                  height: heightOfMyScreen * 0.07,
                  width: widthOfMyScreen * 0.18,
                  child: const Image(
                    image: NetworkImage(
                        'https://cdn4.vectorstock.com/i/1000x1000/53/48/student-login-vector-5625348.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: widthOfMyScreen * 0.05,
              ),
              const Text(
                'Step toward Tech',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: heightOfMyScreen * 0.08,
            ),
            Center(
              child: Form(
                  key: globalKeyForForm,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: widthOfTextFormField,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              label: const Text('First Name'),
                              helperText: 'Required*',
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 228, 16, 16),
                                    width: 2,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: textFieldColor,
                                    width: 2,
                                  )),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name cannot be empty';
                              } else {
                                if (value.codeUnits.every((element) =>
                                    element ==
                                    LogicalKeyboardKey.space.keyId)) {
                                  return 'Invalid Name ';
                                } else {
                                  if (!(value.isAllCharacters())) {
                                    return 'Name can contains only characters ';
                                  }
                                }
                              }
                            },
                          )),
                      SizedBox(
                        height: heightOfMyScreen * 0.02,
                      ),
                      SizedBox(
                          width: widthOfTextFormField,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              label: Text('First Name'),
                              helperText: 'Required*',
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 228, 16, 16),
                                    width: 2,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: textFieldColor,
                                    width: 2,
                                  )),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name cannot be empty';
                              } else {
                                if (value.isOnlySpace()) {
                                  return 'Invalid Name ';
                                } else {
                                  if (!(value.isAllCharacters())) {
                                    return 'Name can contains only characters ';
                                  }
                                }
                              }
                            },
                          )),
                      SizedBox(
                        height: heightOfMyScreen * 0.02,
                      ),
                      SizedBox(
                          width: widthOfTextFormField,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              label: const Text('Email'),
                              helperText: 'Required*',
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 228, 16, 16),
                                    width: 2,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: textFieldColor,
                                    width: 2,
                                  )),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email cannot be empty';
                              } else {
                                if (value.codeUnits.any((element) =>
                                    element ==
                                    LogicalKeyboardKey.space.keyId)) {
                                  return 'Space is not allowed in Email';
                                } else {
                                  if (!(value.contains('@gmail.com'))) {
                                    return 'Invalid Email Syntax';
                                  } else {
                                    if (!(value.isValidEmail())) {
                                      return 'Invalid Email Syntax';
                                    }
                                  }
                                }
                              }
                            },
                          )),
                      SizedBox(
                        height: heightOfMyScreen * 0.02,
                      ),
                      SizedBox(
                          width: widthOfTextFormField,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.lock_outline_rounded),
                              label: const Text('Enter Password'),
                              helperText: passwordHelperText,
                              helperStyle: TextStyle(color: helperTextColor),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 228, 16, 16),
                                    width: 2,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: textFieldColor,
                                    width: 2,
                                  )),
                            ),
                            controller: passwordEditer,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password cannot be empty';
                              } else {
                                if (value.length < 8) {
                                  setState(() {
                                    textFieldColor =
                                        Color.fromARGB(255, 255, 150, 2);
                                  });
                                  return 'Password length is less than 8';
                                } else {
                                  if (value.isAllCharacters()) {
                                    setState(() {
                                      textFieldColor =
                                          Color.fromARGB(255, 8, 89, 239);
                                    });

                                    return 'Password can contain a Special character and a Digit';
                                  } else {
                                    if (value.isAllDigits()) {
                                      textFieldColor = Colors.pink.shade800;

                                      return 'Password can contain Characters and Special Characters';
                                    } else {
                                      if (value.isAllSpecialCharacters()) {
                                        return 'All are special characters';
                                      } else {
                                        if (value.hasAnyDigit() &&
                                            value.hasAnyCharacter() &&
                                            value.hasAnySpecialCharacter() &&
                                            value.length > 8) {
                                          setState(() {
                                            textFieldColor = Colors.green;
                                            helperTextColor = Colors.green;
                                          });

                                          passwordHelperText =
                                              'Strong password';
                                          return null;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            },
                          )),
                      SizedBox(
                        height: heightOfMyScreen * 0.02,
                      ),
                      SizedBox(
                          width: widthOfTextFormField,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.lock_outline_rounded),
                              label: const Text('Repeat Password'),
                              helperText: passwordHelperTextForRepeat,
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                              errorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 228, 16, 16),
                                    width: 2,
                                  )),
                              focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 5, 171, 248),
                                    width: 2,
                                  )),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password cannot be empty';
                              } else {
                                if (!(passwordEditer.text == value)) {
                                  return 'Password does not Matched';
                                } else {
                                  setState(() {});
                                  passwordHelperTextForRepeat =
                                      'Password Matched';
                                  return null;
                                }
                              }
                            },
                          )),
                      SizedBox(height: heightOfMyScreen * 0.03),
                      const Text('Other SignUp Options',
                          style: TextStyle(fontSize: 22, color: Colors.blue)),
                      SizedBox(height: heightOfMyScreen * 0.03),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const LoginOptions(
                                imageUrl:
                                    'https://cdn.dribbble.com/users/2522374/screenshots/7911727/google-logo.png'),
                            SizedBox(
                              width: widthOfMyScreen * 0.075,
                            ),
                            const LoginOptions(
                                imageUrl:
                                    'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/2048px-Facebook_f_logo_%282021%29.svg.png'),
                            SizedBox(
                              width: widthOfMyScreen * 0.075,
                            ),
                            const LoginOptions(
                                imageUrl:
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png'),
                            SizedBox(
                              width: widthOfMyScreen * 0.075,
                            ),
                            const LoginOptions(
                                imageUrl:
                                    'https://e7.pngegg.com/pngimages/708/311/png-clipart-twitter-twitter-thumbnail.png'),
                          ]),
                      SizedBox(height: heightOfMyScreen * 0.01),
                      const Text('Already hava an account? SignIn'),
                      SizedBox(height: heightOfMyScreen * 0.03),
                      InkWell(
                        onTap: () {
                          globalKeyForForm.currentState?.validate();
                        },
                        child: Container(
                          height: heightOfMyScreen * 0.05,
                          width: widthOfMyScreen * 0.6,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.blue,
                                    Colors.blue.shade100,
                                    Colors.blue.shade300,
                                    Colors.blue.shade300,
                                    Colors.blue.shade100,
                                  ]),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              color: Colors.blue,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(3, 3),
                                    color: Color.fromARGB(255, 211, 209, 209),
                                    blurRadius: 8,
                                    spreadRadius: 2),
                                BoxShadow(
                                    offset: Offset(-3, -3),
                                    color: Color.fromARGB(255, 205, 204, 204),
                                    blurRadius: 8,
                                    spreadRadius: 2),
                              ]),
                          child: const Center(
                              child: Text(
                            'SignUp',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ));
  }
}
