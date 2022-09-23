import 'package:flutter/material.dart';
import 'package:workshop/View/componet/core.dart';
import 'package:workshop/viewmodel/Login_Cubit/login_cubit.dart';

class SupportScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4,
        title: Text('Support',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            defualtTextFormField(controller: emailcontroller,hint:'Name',Bool: true,fillColor:Colors.grey.shade200,prefixicon: Icon(Icons.person,color: Colors.grey,),validate: (String? value){if(value!.isEmpty){return 'enter your email';}},),
            SizedBox(height: 15,),
            defualtTextFormField(controller: emailcontroller,hint:'E-Mail',Bool: true,fillColor:Colors.grey.shade200,prefixicon: Icon(Icons.email_rounded,color: Colors.grey,),validate: (String? value){if(value!.isEmpty){return 'enter your email';}},),
            SizedBox(height: 25,),
            defualtTextFormField(controller: emailcontroller,hint:'What\'s making you unhappy?',Bool: true,fillColor:Colors.grey.shade200,minLines: 6,maxLines: 6,validate: (String? value){if(value!.isEmpty){return 'enter your email';}},),
            SizedBox(height: 30,),
            defultMatrialButton(function: (){},color: Colors.deepOrange, bordercolor: Colors.deepOrange, textcolor: Colors.white, text: 'Submit'),


          ],
        ),
      ),
    );
  }
}
