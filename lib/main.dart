import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_project/cubit/counter_cubit.dart';
import 'package:my_flutter_project/widget/home_view.dart';

void main() {
  runApp(const PonterCounter());
}

class PonterCounter extends StatelessWidget {
  const PonterCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
