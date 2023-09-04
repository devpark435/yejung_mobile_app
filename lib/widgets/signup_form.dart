import 'package:flutter/material.dart';
import 'package:yejung_flutter_app/widgets/loding_widget.dart';
import 'package:yejung_flutter_app/widgets/snackbar.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String isSignIn = "";

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "이름을 입력하세요",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (email) => {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "Name",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "담당 반을 입력하세요",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (email) => {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "subject",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "E-mail형식 ID를 입력하세요",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (email) => {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "Email",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "비밀번호",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (password) {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "Password",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "비밀번호 확인",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (password) {},
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "Check-Password",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 500), () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(customSnackBar("회원가입이 완료되었습니다"));
                    Future.delayed(const Duration(milliseconds: 500), () {
                      Navigator.pop(context);
                    });
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                label: Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeightDelta: 2),
                ),
              ),
            ),
          ],
        ));
  }
}
