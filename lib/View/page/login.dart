import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/View/componet/core.dart';
import 'package:workshop/View/page/Signup.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/navbar.dart';
import 'package:workshop/viewmodel/Login_Cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => LoginCubit(),
     child: BlocConsumer<LoginCubit, LoginState>(
     listener: (context, state) {
    // TODO: implement listener
      },
    builder: (context, state) {
     return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Orange",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 30),
                      ),
                      Text(
                        " Digital Centar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                            fontSize: 30
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       children: [
                         Text("Login",
                           style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 30.0,fontWeight:FontWeight.bold),
                         ),
                       ],
                     ),
                   ),
                  SizedBox(height: 20,),
                  defualtTextFormField(
                    validate: (String? value){
                      if(value!.isEmpty){
                        return 'enter your email';
                      }
                    },
                      controller:emailcontroller,
                      hint: 'E-Mail' ),
              SizedBox(height: 30,),
                  defualtTextFormField(
                    validate: (String? value){
                      if(value!.isEmpty){
                        return 'enter your password';
                      }
                    },
                      controller: passwordcontroller,
                      hint: 'Password',
                      suffix: LoginCubit.get(context).suffix,
                      isPassword: LoginCubit.get(context).ispassword,
                      suffixPressed: (){
                        LoginCubit.get(context).changepassword();
                      },

                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text("Forget password?",
                      style: TextStyle(
                        color: Colors.deepOrange
                      ),)),
                      Divider(color: Colors.deepOrange,thickness: 5,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  ConditionalBuilder(
                    condition: state is! LoginLoadingStates,
                    builder: (context
                        )=>defultMatrialButton(
                      function: (){
                        if(formKey.currentState!=null&& formKey.currentState!.validate()){
                          LoginCubit.get(context).UserLogin(email:emailcontroller.text ,password:passwordcontroller.text );
                          Navigator.push(context,MaterialPageRoute(builder: (context) => NavBar(),));
                        }
                      },
                        textcolor:  Colors.white,
                        bordercolor: Colors.deepOrange ,
                        color: Colors.deepOrange ,
                        text:'Login'),
                    fallback: (context)=>Center(child: CircularProgressIndicator()),

                  ),
                  Row(
                      children: [
                        Expanded(
                            child: Divider(
                              endIndent: 1,
                              thickness: 1,
                              color: Colors.black,
                              height: 50,
                              indent: 1,
                            )
                        ),

                        Text("OR",
                        style: TextStyle(fontSize: 20),),

                        Expanded(
                            child: Divider(
                              endIndent: 1,
                              thickness: 1,
                              color: Colors.black,
                              height: 50,
                              indent: 1,
                            )
                        ),
                      ]
                  ),
                  defultMatrialButton(function: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp(),));},text:  'Sign up', color: Colors.white,bordercolor: Colors.deepOrange,textcolor: Colors.deepOrange),




                ],
              ),
            ),
          ),
        ),
      ),
    );
  },
),
);
  }
}
