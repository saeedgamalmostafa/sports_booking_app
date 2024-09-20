import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:spod_app/regest/cutomTextfield.dart';
import 'package:spod_app/regest/login_screen.dart';
import 'package:spod_app/regest/snak_bar.dart';
import 'package:spod_app/model/user.dart';
import 'package:spod_app/service/user_service.dart';
import '../helper/shared_prefrences.dart';
import '../route_named.dart';
import '../screen/main/home/home_screen.dart';
import 'custom_button.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;
  String? name;

  String? accountType;

  bool isLoading = false;

  UserCredential? user;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Lottie.network("https://assets1.lottiefiles.com/packages/lf20_meHEbIfGxc.json"),

                 SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'REGISTER',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    name = data;
                  },
                  hintText: 'Name',
                ),
                  SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  obscureText: true,
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButon(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await registerUser();
                        await UserService().addUser(
                            UserModel(
                                id: user!.user!.uid,
                                name: name!,
                                email: email!,
                                accountType: RouteNamed.user,
                                imageProfile: "imageProfile")).then(
                                (e) async {
                                  await  CacheHelper.saveData(key: 'token', value: user!.user!.uid);
                                  print('${CacheHelper.getData(key: 'token')}');
                                  Get.off(HomeScreen());
                               // Navigator.pushNamed(context, LoginPage.id);
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                            });
                      } on FirebaseAuthException catch (ex) {
                        if (ex.code == 'weak-password') {
                          showSnackBar(context, 'weak password');
                        } else if (ex.code == 'email-already-in-use') {
                          showSnackBar(context, 'email already exists');
                        }
                      } catch (ex) {
                        showSnackBar(context, 'there was an error');
                      }

                      isLoading = false;
                      setState(() {});
                    } else {}
                  },
                  text: 'REGISTER',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'already have an account?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '  Login',
                        style: TextStyle(
                          color: Color(0xffC7EDE6),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!,password:password!,);
   }
}
