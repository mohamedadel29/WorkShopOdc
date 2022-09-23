import 'package:flutter/material.dart';
 Widget defualtTextFormField(
{
String? hint,
  IconData? suffix,
  maxLines: 1,
  minLines: 1,
  bool? Bool,
  Color? fillColor,
  Widget? prefixicon,
  required TextEditingController controller,
  onTap,
  onChanged,
  bool isPassword = false,
  bool isClickable = true,
  IconData? suffixIcon,
  IconData? prefix,
  Function? suffixPressed,
  key,
  Function(String)? onFieldSubmitted,
  FocusNode? focusNode,
  required String? Function(String?) validate,

}
     )=>TextFormField(
      key: key,
   validator: validate,
   focusNode: FocusNode(),
      maxLines: maxLines,
      minLines: minLines,
     controller: controller,
     enabled: isClickable,
       onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
     onChanged: onChanged,
     obscureText: isPassword,
     decoration: InputDecoration(
     prefixIcon: Icon(
       prefix,
       color: Colors.deepOrange,
     ),
     suffixIcon: suffix != null ? IconButton(
       onPressed: () {
         suffixPressed!();
       },
       icon: Icon(
         suffix,
         color: Colors.deepOrange,),
     ) : null,
     prefix: prefixicon,
      filled: Bool,
     fillColor:fillColor ,
     //suffixIcon: Icon(suffix,color:Colors.deepOrange,),
     hintText: hint,
     border: OutlineInputBorder(
       borderRadius: BorderRadius.circular(8),

     ),
   ),

 );
 Widget defultMatrialButton(
{
  required Function function,
  Color? color,
  Color? bordercolor,
  Color ?textcolor,
  String ?text,
})=>MaterialButton(
     onPressed: (){
       function();
     },
   color: color,
   height: 50,
   shape:OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
       borderSide: BorderSide( ),

   ),
   minWidth:double.infinity ,
      child: Text(
       text!,
    style: TextStyle(
    color: textcolor,
      fontSize: 20.0,
),
 ),
 );

