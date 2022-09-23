import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/View/page/home.dart';
import 'package:workshop/View/page/navbar.dart';
import 'package:workshop/viewmodel/Final_cubit/final_cubit.dart';

class Finals extends StatelessWidget {
  const Finals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => FinalCubit()..Finalshow(),
  child: BlocConsumer<FinalCubit, FinalState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    FinalCubit finalCubit=FinalCubit.get(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle:true ,
          title: Text(
            'Finals',
            style: TextStyle(
              color:Colors.black, ),
          ),
          leading: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => NavBar(),));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,
            ),
          ),
          actions: [
            Icon(Icons.filter_alt,
              color: Colors.deepOrange,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 5,

        ),
        body:finalCubit.examModel==null?Text('loading..') :ListView.builder(
          itemCount:finalCubit.examModel!.data!.length ,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Card(
                    elevation: 20,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(finalCubit.examModel!.data![index].examSubject.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
                              ),
                              Spacer(),
                              Icon(Icons.timer_rounded),
                              Text('2hrs')

                            ],
                          ),
                          SizedBox(height:20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'section Day',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey),

                              ),
                              Text(
                                'Start Time',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey),

                              ),
                              Text(
                                'End Time',
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.grey),

                              ),


                            ],
                          ),
                          Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.calendar_month,),
                              Text(finalCubit.examModel!.data![index].examDate.toString(),),
                              Spacer(),
                              Icon(Icons.access_time_filled,color: Colors.green,),
                              Text(finalCubit.examModel!.data![index].examStartTime.toString(),),
                              Spacer(),
                              Icon(Icons.access_time_filled,color: Colors.red,),
                              Text(finalCubit.examModel!.data![index].examEndTime.toString(),),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            );
          },
        )
    );
  },
),
);
  }
}
