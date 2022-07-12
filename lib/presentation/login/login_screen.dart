import 'package:flutter/material.dart';
import 'package:vgd/presentation/login/login_viewmodel.dart';

import '../resources/colors.dart';
import '../resources/string_resource.dart';
import '../resources/style.dart';
import '../resources/theme.dart';
import '../resources/values.dart';
import '../route/routes_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  final LoginViewModel _viewModel = LoginViewModel();

  _bind(){
    _viewModel.start();
    _username.addListener(() => _viewModel.setUserName(_username.text));
    _password.addListener(() => _viewModel.setPassword(_password.text));
  }

  @override
  void initState() {
    // TODO: implement initState
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          home : Material(
                child:Column(
                  children: [
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                        height: AppSize.s80,
                        decoration: const BoxDecoration(
                          color: Colors.white38,
                        ),
                        child: const Image(image: AssetImage('assets/images/logo.jpeg'))
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children:[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: AppPadding.p16,horizontal: AppPadding.p16),
                              child: Container(
                                  height: 40,
                                  width: (MediaQuery.of(context).size.width),
                                  child : Center(
                                    child: Text(
                                      StringResource.mohilaOdhidoptar,
                                      style: getBoldStyle(fontSize: AppSize.s20,color: ColorManager.greenColor),
                                    ),
                                  )
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: AppPadding.p8,horizontal: AppPadding.p8),
                              child: Column(
                                children: [
                                  StreamBuilder<bool>(
                                    // stream: _viewModel.outputIsUserNameIsValid,
                                    builder: (context,snapShot){
                                      return TextFormField(
                                        controller: _username,
                                        decoration: const InputDecoration(
                                          suffixIcon: Icon(Icons.person),
                                          labelText: "ব্যবহারকারী আইডি",
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  StreamBuilder<bool>(
                                      // stream: _viewModel.outputIsUserNameIsValid,
                                      builder: (context,snapShot){
                                        return TextFormField(
                                          controller: _password,
                                          obscureText: true,
                                          decoration: const InputDecoration(
                                            suffixIcon: Icon(Icons.lock),
                                            labelText: "পাসওয়ার্ড",
                                          ),
                                        );
                                      }
                                  )
                                ],
                              ),

                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, Routes.registration);
                                  },
                                  child: Text("রেজিস্ট্রেশন",style: getMediumStyle(fontSize: AppSize.s16,color: Colors.white),),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                StreamBuilder<bool>(
                                  // stream: _viewModel.outputFieldsAreValid,
                                    builder: (context,snapShot){
                                      return ElevatedButton(
                                        onPressed: () {
                                          print("${snapShot.data}");
                                          // _viewModel.loginBtn(context,db);
                                        },
                                        child: Text("লগ-ইন",style: getMediumStyle(fontSize: AppSize.s16,color: Colors.white),),
                                      );
                                    }
                                )

                              ],
                            )
                            ,
                            const SizedBox(
                              height: 40.0,
                            ),
                            // ElevatedButton(
                            //   onPressed:  registerBtn,
                            //   child: const Text("Register",style: TextStyle(color: Colors.white),),
                            //   style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                            // ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical : AppPadding.p8,horizontal : AppPadding.p8),
                              child: Align(
                                  alignment: FractionalOffset.bottomCenter,
                                  child :  Container(
                                      height: 100,
                                      width: (MediaQuery.of(context).size.width),
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,

                                      ),
                                      child : const Center(
                                        child:  Text(
                                          "© ২০১৮-২০১৯ উন্নত মাতৃত্বকাল এবং ল্যাকটেটিং মাদার ভাতা প্রকল্প, মহিলা বিষয়ক অধিদপ্তর, মহিলা ও শিশু বিষয়ক মন্ত্রণালয়, সহায়তায় WFP।",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                  )
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                )

            ),


      ),
    );
  }
}
