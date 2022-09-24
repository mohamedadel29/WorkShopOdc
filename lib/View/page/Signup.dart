import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/View/componet/core.dart';
import 'package:workshop/View/page/dropdown.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/login.dart';
import 'package:workshop/View/page/navbar.dart';
import 'package:workshop/viewmodel/register_cubit/register_cubit.dart';

class SignUp extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var namecontroller=TextEditingController();
  var phonecontroller=TextEditingController();

  var formKey =GlobalKey<FormState>();

  static const List<String> list=<String>['male','female'];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => RegisterCubit(),
  child: BlocConsumer<RegisterCubit, RegisterState>(
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
              key: formKey,
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("Sign Up",
                          style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 30.0,fontWeight:FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  defualtTextFormField(controller:namecontroller,validate: (String? value){if(value!.isEmpty){return 'enter your name';}},hint: 'Name', ),
                  SizedBox(height: 20,),
                  defualtTextFormField(controller:emailcontroller,validate: (String? value){if(value!.isEmpty){return 'enter your email';}},hint: 'E-Mail' ),
                  SizedBox(height: 20,),
                  defualtTextFormField(
                    validate: (String? value){
                      if(value!.isEmpty){
                        return 'enter your password';
                      }
                    },
                    controller: passwordcontroller,
                    hint: 'Password',
                    suffix: RegisterCubit.get(context).suffix,
                    isPassword:RegisterCubit.get(context).ispassword,
                    suffixPressed: (){
                      RegisterCubit.get(context).changepassword();
                    },

                  ),
                  SizedBox(height: 20,),
                  defualtTextFormField(
                    validate: (String? value){
                      if(value!.isEmpty){
                        return 'enter your password';
                      }
                    },
                    controller: passwordcontroller,
                    hint: 'Password',
                    suffix: RegisterCubit.get(context).suffix,
                    isPassword: RegisterCubit.get(context).ispassword,
                    suffixPressed: (){
                      RegisterCubit.get(context).changepassword();
                    },
                  ),
                  SizedBox(height: 20,),
                  defualtTextFormField(controller:phonecontroller,validate: (String? value){if(value!.isEmpty){return 'enter your phone';}}, hint: 'phone Number'),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text('Gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Text('Universy',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: DropdownButtonExample(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: DropdownButtonExample2(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Grade',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:DropdownButtonExample3(),
                      ),
                    ],
                  ),
                  ConditionalBuilder(
                    condition: state is! RegisterLoadingState,
                    builder: (context
                        )=>defultMatrialButton(
                        function: (){
                          if(formKey.currentState!=null&& formKey.currentState!.validate()){
                            RegisterCubit.get(context).UserLogin(email:emailcontroller.text ,password:passwordcontroller.text, name:namecontroller.text , phone: phonecontroller.text );
                            Navigator.push(context,MaterialPageRoute(builder: (context) => NavBar(),));
                          }
                        },
                        textcolor:  Colors.white,
                        bordercolor: Colors.deepOrange ,
                        color: Colors.deepOrange ,
                        text:'Sign Up'),
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
                  defultMatrialButton(function: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),);},color: Colors.white,bordercolor:  Colors.deepOrange,textcolor:  Colors.deepOrange,text:  'Login'),







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
