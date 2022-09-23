import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
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
              title: Text('trems&condition',style: TextStyle(color: Colors.black),),

            ),
            body: SafeArea(
              child: Html(data:termConditionCubit.termsModel!.data?.terms,

              ),
            ),
          );
        },
      ),
    );
  }
}
