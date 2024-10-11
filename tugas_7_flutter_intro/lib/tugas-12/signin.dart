import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tugas_7_flutter_intro/routes/app_routes_named.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';
import 'package:tugas_7_flutter_intro/theme/app_color.dart';
import 'package:tugas_7_flutter_intro/tugas-12/custome/custom_text_form_field.dart';
import 'package:tugas_7_flutter_intro/tugas-12/register.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAsset.sigin)
                    )
                  ),
                )
              ),
              const SizedBox(height: 40),
              const CustomTextFormField(
                label: "Email"
              ),
              const CustomTextFormField(
                label: "Password"
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    backgroundColor: blueColor
                  ),
                  onPressed: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: 'test@gmial.com', 
                        password: '123456'
                      );
                      Get.toNamed(AppRoutesNamed.tugas10);
                      print(userCredential);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  }, 
                  child: const Text(
                    'Masuk', 
                    style: TextStyle(color: Colors.white)
                  )
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffc0c0c0),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau masuk menggunakan',
                      style: TextStyle(color: Color(0xffc0c0c0)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffc0c0c0),
                      height: 3,
                    )
                  )
                ],
              ),
              const SizedBox(height: 40),
              Material(
                color: Colors.white,
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppAsset.icGoogle)
                            )
                          ),
                        ),
                        const Text(
                          'Google',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    )
                  ),
                ),
              ),
              const SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Belum punya akun? silahkan '),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage()
                        )
                      );
                    },
                    child: const Text('mendaftar ', 
                    style: TextStyle(color: Color(0xff3498Db)),
                  ),
                  ),
                  const Text('sekarang'),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}