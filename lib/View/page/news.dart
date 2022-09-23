import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'News',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 250,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Image.asset(
                  'image/splash.png',
                  fit: BoxFit.fill,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('ODCs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange
                        ),
                        child: Row(
                            children: [
                              Icon(Icons.share,
                                color: Colors.black,
                              ),
                              Container(
                                height: 18,
                                child: VerticalDivider(color: Colors.white,thickness: 2,)),
                              Icon(Icons.copy_all_outlined,
                                color: Colors.black,
                              ),

                            ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('ODC Supports All Unversties',style: TextStyle(fontSize: 20,color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),

          ),

        ),
      ),
    );
  }
}
