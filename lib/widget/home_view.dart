
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_project/cubit/counter_cubit.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
   HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 550,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).counterA}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 100),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).counterIncrement("A", 1) ;
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).counterIncrement("A", 2) ;
                           
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).counterIncrement("A", 3) ;
                            
                          },
                          child: const Text(
                            "Add 3 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Colors.black,
                  width: 100, // Space around the divider
                  thickness: 0.2, // Thickness of the divider
                  indent: 20, // Top padding
                  endIndent: 20, // Bottom padding
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).counterB}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 100),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                          BlocProvider.of<CounterCubit>(context).counterIncrement("B", 1) ;
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                          BlocProvider.of<CounterCubit>(context).counterIncrement("B", 2) ;              
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                          BlocProvider.of<CounterCubit>(context).counterIncrement("B", 3) ;
                           
                          },
                          child: const Text(
                            "Add 3 point",
                            style: TextStyle(color: Colors.white), 
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 30) // This sets the text color
                ),
            onPressed: () {
            {
            }
            },
            child: const Text("Restart"),
          )
        ],
      ),
    );
      },
    ) ;
  }
}
