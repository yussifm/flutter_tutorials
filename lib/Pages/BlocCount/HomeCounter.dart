import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class CounterHome extends StatefulWidget {
  CounterHome({Key? key}) : super(key: key);

  @override
  _CounterHomeState createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cubit Counter"),
          centerTitle: true,
        ),
        backgroundColor: Colors.amber,
        body: BlocListener<CounterCubit, CounterState>(
          listener: (context, state) {
            if (state.wasinCrement == true) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Incremet"),
                duration: Duration(seconds: 5),
              ));
            } else if (state.wasinCrement == false) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Incremet"),
                duration: Duration(seconds: 5),
              ));
            }
          },
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("You have pushed the button this many times: "),
                Container(
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text(
                        state.currentState.toString(),
                        style: Theme.of(context).textTheme.headline2,
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).decrement();
                      },
                      child: Icon(Icons.remove),
                      tooltip: "Decrement",
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).incremnet();
                      },
                      child: Icon(Icons.add),
                      tooltip: "INcrement",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
