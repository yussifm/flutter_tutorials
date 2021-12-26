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
    return Scaffold(
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
              duration: Duration(milliseconds: 200),
            ));
          } else if (state.wasinCrement == false) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Decremet"),
              duration: Duration(milliseconds: 200),
            ));
          }
        },
        child: Center(
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("You have pushed the button this many times: "),
              Container(
                child: BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                    return Text(
                      state.currentState.toString(),
                      style: Theme.of(context).textTheme.headline2?.copyWith(  color: Colors.deepPurple,),
                      
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    icon: Icon(Icons.remove),
                     color: Colors.deepPurple,
                    tooltip: "Decrement",
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).incremnet();
                    },
                    icon: Icon(Icons.add),
                    color: Colors.deepPurple,
                    tooltip: "INcrement",
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
