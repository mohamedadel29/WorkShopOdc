import 'package:flutter/material.dart';
import 'package:workshop/View/componet/core.dart';
import 'package:workshop/View/page/notes.dart';

class AddNotes extends StatelessWidget {
  var namecontroller=TextEditingController();
  DateTime now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Notes(),));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Add Note',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              defualtTextFormField(controller:namecontroller,validate: (String? value){if(value!.isEmpty){return 'enter your title';}},hint: 'Title', ),
              SizedBox(height: 20,),
              defualtTextFormField(controller:namecontroller,validate: (String? value){if(value!.isEmpty){return 'enter your date';}},hint: now.toString(), ),
              SizedBox(height: 20,),
              defualtTextFormField(controller:namecontroller,validate: (String? value){if(value!.isEmpty){return 'enter your note';}},hint: 'Note',minLines: 6 ,maxLines: 6),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                  ),
                  child: Text('+ Add',style: TextStyle(color:Colors.black),


                  ))




            ],
          ),
        ),
      ),
    );
  }
}
