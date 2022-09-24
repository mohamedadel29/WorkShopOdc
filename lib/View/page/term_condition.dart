import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:workshop/View/page/settings.dart';
import 'package:workshop/viewmodel/Term_Condition/term_condition_cubit.dart';

class Term_Condition extends StatelessWidget {
  const Term_Condition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      TermConditionCubit()
        ..Termsshow(),
      child: BlocConsumer<TermConditionCubit, TermConditionState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermConditionCubit termConditionCubit=TermConditionCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsScreen(),));

                },
                  child: Icon(Icons.arrow_back_ios,color: Colors.deepOrange,)),
              title: Text('trems&condition',style: TextStyle(color: Colors.black),),

            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 500,
                child: ConditionalBuilder(
                  condition: (termConditionCubit.termsModel !=null),
                  builder: (context)=>Html(data:termConditionCubit.termsModel!.data?.terms,

                  ),
                  fallback: (context)=>Center(
                    child: CircularProgressIndicator(color: Colors.deepOrange,),
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
