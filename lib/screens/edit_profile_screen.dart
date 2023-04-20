import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_social/resources/auth_methods.dart';
import 'package:flutter_social/responsive/mobile_screen_layout.dart';
import 'package:flutter_social/responsive/responsive_layout.dart';
import 'package:flutter_social/responsive/mobile_screen_layout.dart';
import 'package:flutter_social/responsive/web_screen_layout.dart';
import 'package:flutter_social/screens/login_screen.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_social/utils/global_variable.dart';
import 'package:flutter_social/utils/utils.dart';

import 'package:flutter_social/widgets/text_field_input.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _usernameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  bool _isLoading = false;
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    // _emailController.dispose();
    // _passwordController.dispose();
    _usernameController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              SvgPicture.asset(
                'assets/peaceonearth-text.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(
                height: 64,
              ),
              Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(_image!),
                          backgroundColor: Colors.red,
                        )
                      : const CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://i.stack.imgur.com/l60Hf.png'),
                          backgroundColor: Colors.red,
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: selectImage,
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Enter your username',
                textInputType: TextInputType.text,
                textEditingController: _usernameController,
              ),
              const SizedBox(
                height: 24,
              ),
              // TextFieldInput(
              //   hintText: 'Enter your email',
              //   textInputType: TextInputType.emailAddress,
              //   textEditingController: _emailController,
              // ),
              // const SizedBox(
              //   height: 24,
              // ),
              // TextFieldInput(
              //   hintText: 'Enter your password',
              //   textInputType: TextInputType.text,
              //   textEditingController: _passwordController,
              //   isPass: true,
              // ),
              // const SizedBox(
              //   height: 24,
              // ),
              TextFieldInput(
                hintText: 'Enter your bio',
                textInputType: TextInputType.text,
                textEditingController: _bioController,
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                child: Container(
                  child: !_isLoading
                      ? const Text(
                          'Sign up',
                        )
                      : const CircularProgressIndicator(
                          color: primaryColor,
                        ),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: blueColor,
                  ),
                ),
                onTap: () async {
                  // String res = await AuthMethods().signUpUser(
                  //   // email: _emailController.text,
                  //   // password: _passwordController.text,
                  //   username: _usernameController.text,
                  //   bio: _bioController.text,
                  //   file: _image!,
                  // );

                  setState(() {
                    _isLoading = false;
                  });

                  // if (res != "success") {
                  //   showSnackBar(context, res);
                  // } else {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const ResponsiveLayout(
                  //       mobileScreenLayout: MobileScreenLayout(),
                  //       webScreenLayout: WebScrenLayout(),
                  //     ),
                  //   ));
                  // }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      'Already have an account?',
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        ' Login.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
