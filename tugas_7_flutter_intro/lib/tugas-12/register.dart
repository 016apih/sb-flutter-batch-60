import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas_7_flutter_intro/theme/app_asset.dart';
import 'package:tugas_7_flutter_intro/theme/app_color.dart';
import 'package:tugas_7_flutter_intro/tugas-12/custome/custom_text_form_field.dart';
import 'package:tugas_7_flutter_intro/tugas-12/signin.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                      image: AssetImage(AppAsset.register)
                    )
                  ),
                )
              ),
              const SizedBox(height: 40),
              CustomTextFormField(
                label: "Masukan Email"
              ),
              CustomTextFormField(
                label: "Password"
              ),
              CustomTextFormField(
                label: "Confirmasi Password"
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
                      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: 'test@gmial.com', 
                        password: '123456'
                      );
                    } on Exception catch (e) {
                      print(e);
                    }
                  }, 
                  child: const Text(
                    'Mendaftar', 
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
                      'Atau daftar menggunakan',
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
                    onPressed: () async {
                      try {
                        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: "test@example.com",
                          password: "1231"
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
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
                        ),
                      ],
                    )
                  ),
                ),
              ),
              const SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun? silahkan '),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const SignInPage()
                        )
                      );
                    },
                    child: const Text('Masuk', 
                      style: TextStyle(color: Color(0xff3498Db)),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}