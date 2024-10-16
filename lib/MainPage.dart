import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one/bloc/pizza_bloc.dart';
import 'package:one/models/pizza_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<PizzaBloc, PizzaState>(
          builder: (context , State) {
            if(State is ! PizzaLoaded){
              return CircularProgressIndicator(color: Colors.orange,);
            }
            if (State is PizzaLoaded){
              return Column(
                children: [
                  Text("${State.pizzas.length}"),
                ],
              );
            }
          
            else{
              return Text("Something went Wrong");
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<PizzaBloc>().add(AddPizza(Pizza.pizza[0]));
      }, child: Icon(Icons.add),),
    );
  }
}