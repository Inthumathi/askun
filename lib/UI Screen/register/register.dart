import 'package:askun/UI%20Screen/login%20page/login.dart';
import 'package:askun/UI%20Screen/login%20page/otpscreen.dart';
import 'package:askun/utilites/constant.dart';
import 'package:askun/utilites/strings.dart';
import 'package:askun/widget/smalltext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RigisterPageState();
}

class _RigisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmallText(text:'Already have an Account?',size: 16,color: blueGrey,),
            SizedBox(width: 5,),
            InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child:  LoginPage()));
                },
                child: SmallText(text:'Login',fontWeight: FontWeight.w500,)),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 50),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height/1.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                    // heightSpace,
                    Center(
                      child: SmallText(
                        text: MyStrings.register,
                        size: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: MyStrings.loginMessage,
                        style: TextStyle(
                          fontSize: 15,
                          color: blueGrey,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: MyStrings.oTP,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: primaryColor)),
                          TextSpan(text: MyStrings.mobile),
                        ],
                      ),
                    ),
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    Container(
                      height: MediaQuery.of(context).size.height/4.8,

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(text: MyStrings.username),
                          heightSpace,
                          TextField(
                            cursorColor: primaryColor,
                            // controller: controller,
                            decoration: InputDecoration(
                              filled: true,
                              hoverColor: primaryColor,
                              focusColor: primaryColor,
                              isDense: true,
                              counterText: "",
                              contentPadding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(width: 1, color: blueGrey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(width: 1, color: blueGrey),
                              ),
                              suffixIcon: Icon(
                                Icons.person,
                                size: 25,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          heightSpace,
                          heightSpace,
                          SmallText(text: MyStrings.mobileNumber),
                          heightSpace,
                          TextField(
                            cursorColor: primaryColor,
                            // controller: controller,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                              //To remove first '0'
                              FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                              FilteringTextInputFormatter.deny(RegExp(r'^1+')),
                              FilteringTextInputFormatter.deny(RegExp(r'^2+')),
                              FilteringTextInputFormatter.deny(RegExp(r'^3+')),
                              FilteringTextInputFormatter.deny(RegExp(r'^4+')),
                              FilteringTextInputFormatter.deny(RegExp(r'^5+')),
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              hoverColor: primaryColor,
                              focusColor: primaryColor,
                              isDense: true,
                              counterText: "",
                              contentPadding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(width: 1, color: blueGrey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(width: 1, color: blueGrey),
                              ),
                              suffixIcon: Icon(
                                Icons.phone_android_sharp,
                                size: 25,
                                color: primaryColor,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Text(
                                  '+91',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const OTPScreen()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 50,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SmallText(
                              text: MyStrings.register,
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    // heightSpace,
                    // Center(
                    //     child: SmallText(
                    //   text: MyStrings.dummyMessage,
                    //   color: blueGrey,
                    //   fontStyle: FontStyle.italic,
                    //   fontWeight: FontWeight.w400,
                    // ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
