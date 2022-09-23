import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workshop/View/page/addnotes.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/navbar.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => NavBar(),));},child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        centerTitle: true,
        title: Text('Notes',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => AddNotes(),));


        },
        backgroundColor: Colors.grey,
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
