import 'package:flutter/material.dart';
import 'package:yejung_flutter_app/widgets/signin_form.dart';

Future<Object?> customSigninDialog(context) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "교사 로그인",
      context: context,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position:
              Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
                  .animate(animation),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Login",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 3),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                                "우리가 그를 전파하여 각 사람을 권하고 모든 지혜로 \n각 사람을 가르침은 각 사람을 \n그리스도 안에서 완전한 자로 세우려 함이니\n골로새서 1:28 ",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(color: Colors.black)),
                          ),
                          const SignInFrom(),
                        ],
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: -35,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor:
                                Theme.of(context).colorScheme.background,
                            child: Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ));
}
