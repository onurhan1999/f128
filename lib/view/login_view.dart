import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gustopia/constant/context_extension_constants.dart';
import 'package:gustopia/constant/text_style_constants.dart';
import 'package:gustopia/main.dart';
import 'package:gustopia/view/bottombar_view.dart';
import 'package:gustopia/view/main_view.dart';
import 'package:gustopia/view/signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Color(0xffE24F4F),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Şifrenizi mi unuttunuz?",
                      style: TextStyleConstants.MonsterratSoftWhite15(context),
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: context.dynamicHeight(0.1),
                  ),
                  Container(
                    width: context.dynamicWidth(1),
                    height: context.dynamicHeight(0.7978),
                    decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // En üstteki kayıt ol ve altındaki yazıların bir arada durması için
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haydi başlayalım.",
                                style: TextStyleConstants.MonsterratBlack30(
                                    context),
                              ),
                              Text(
                                "Seni tekrar burada görmek çok güzel!",
                                style: TextStyleConstants.MonsterratSoftBlack15(
                                    context),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.025),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                  ),
                                  iconSize: 55),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                  ),
                                  iconSize: 55),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                  ),
                                  iconSize: 55)
                            ],
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.025),
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.02),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(50)),
                            width: context.dynamicWidth(0.9),
                            height: context.dynamicHeight(0.075),
                            alignment: Alignment.center,
                            child: TextFormField(
                                controller: emailController,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle:
                                        TextStyleConstants.MonsterratBlack15(
                                            context),
                                    prefixIcon: Icon(
                                      Icons.mail_outline_outlined,
                                      color: Colors.black54,
                                    ))),
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.02),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(50)),
                            width: context.dynamicWidth(0.9),
                            height: context.dynamicHeight(0.075),
                            alignment: Alignment.center,
                            child: TextFormField(
                                controller: passwordController,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyleConstants.MonsterratBlack15(
                                            context),
                                    prefixIcon: Icon(
                                      CupertinoIcons.lock,
                                      color: Colors.black54,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.visibility_off),
                                    ))),
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.02),
                          ),
                          Row(
                            children: [
                              Text(
                                "Sonraki girişimde beni hatırla",
                                style: TextStyleConstants.MonsterratBoldBlack12(
                                    context),
                              )
                            ],
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.02),
                          ),
                          InkWell(
                            onTap: signIn,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: BorderRadius.circular(50)),
                                width: context.dynamicWidth(0.9),
                                height: context.dynamicHeight(0.075),
                                alignment: Alignment.center,
                                child: Text(
                                  "Giriş Yap",
                                  style:
                                      TextStyleConstants.MonsterratBoldWhite25(
                                          context),
                                )),
                          ),
                          SizedBox(
                            height: context.dynamicHeight(0.01),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hesabınız yok mu?",
                                style: TextStyleConstants.MonsterratBlack12(
                                    context),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => SignupView()))
                                        .then((value) => debugPrint(value));
                                  },
                                  child: Text(
                                    "Kaydolun",
                                    style: TextStyleConstants
                                        .MonsterratBoldOrangeAccent12(context),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Future signIn() async {
    print("içinde");
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());

    if (FirebaseAuth.instance.currentUser != null) {
      Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomBarView()))
          .then((value) => debugPrint(value));
    }
  }
}
