import 'package:flutter/material.dart';
import 'package:social_media_app/responsive/mobile_screen_layout.dart';
import 'package:social_media_app/responsive/web_screen_layout.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/screens/signup_screen.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'responsive/responsive_layout_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home:const ResponsiveLayout(
      //   mobileScreenLayout:MobileScreenLayout(),
      //   webScreenLayout:WebScreenLayout() ,),
      home:SignupScreen(),
    );
  }
}


class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({Key? key,required this.textEditingController,this.isPass=false,required this.hintText,required this.textInputType,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder=OutlineInputBorder(
        borderSide: Divider.createBorderSide(context)
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder:inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _bioController=TextEditingController();
  final TextEditingController _usernameController=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(),flex: 2),
              // svg image
              SvgPicture.asset('assets/ic_instagram.svg',color: primaryColor,height: 64,),
              const SizedBox(height: 64),
              //circular widget for file
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1663488631285-ee6eaaa9aef5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  Positioned(
                    bottom:-10,
                    left:80,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo),),)
                ],
              ),
              const SizedBox(height: 24),
              //text field input for user name
              TextFieldInput(
                hintText: 'Enter your username',
                textInputType: TextInputType.text,
                textEditingController:_usernameController
              ),
              const SizedBox(height: 24),
              // text field input for email
              TextFieldInput(
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController:_emailController ,
              ),
              const SizedBox(height: 24),
              // text field input for password
              TextFieldInput(
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                textEditingController:_passwordController ,
                isPass: true,
              ),
              const SizedBox(height: 24),
              // text field for bio
              TextFieldInput(
                  hintText: 'Enter your bio',
                  textInputType: TextInputType.text,
                  textEditingController:_bioController
              ),
              const SizedBox(height: 24),
              // button login
              InkWell(
                child: Container(
                  child: const Text('Log in'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                      color: blueColor
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(child: Container(),flex: 2),
              // to sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account?"),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: const Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold)),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
