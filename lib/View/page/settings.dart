import 'package:flutter/material.dart';
import 'package:workshop/View/page/login.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
        style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.transparent,

        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            title:Text('FAQ'),
            trailing: Icon(Icons.arrow_forward_ios),

          ),
          Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 15,
            indent: 15,
          ),
          ListTile(
            title:Text('Terms & Conditions'),
            trailing: Icon(Icons.arrow_forward_ios),


          ),
          Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          ListTile(
            title:Text('Our Partenrs'),
            trailing: Icon(Icons.arrow_forward_ios),


          ),
          Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          ListTile(
            title:Text('Support'),
            trailing: Icon(Icons.arrow_forward_ios),


          ),
          Divider(
            color: Colors.grey,
            height: 5,
            endIndent: 15,
            indent: 15,
            thickness: 1,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: ListTile(
              title:Text('Log out'),
              trailing: Icon(Icons.arrow_forward_ios),


            ),
          ),

        ],
      ),
    );
  }
}
