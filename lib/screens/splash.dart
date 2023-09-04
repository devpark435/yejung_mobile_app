import 'package:flutter/material.dart';
import 'package:yejung_flutter_app/widgets/signin_dialog.dart';
import 'package:yejung_flutter_app/widgets/signup_dialog.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_background2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "Yejung's\nvolunteer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                surfaceTintColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer),
                            onPressed: () {
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                customSigninDialog(context);
                              });
                            },
                            child: Text(
                              "교사로 로그인",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      fontWeightDelta: 3),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .9,
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  surfaceTintColor: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              onPressed: () {
                                Future.delayed(
                                    const Duration(milliseconds: 300), () {
                                  customSignupDialog(context);
                                });
                              },
                              child: Text(
                                "교사 등록",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimaryContainer,
                                        fontWeightDelta: 3),
                              )),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
