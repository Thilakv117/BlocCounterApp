part of 'pizza_bloc.dart';

sealed class PizzaEvent extends Equatable {
  const PizzaEvent();

  @override
  List<Object> get props => [];
}

class LoadPizzaCounter extends PizzaEvent{}
class AddPizza extends PizzaEvent{
  final Pizza pizza;
  AddPizza(this.pizza);
   @override
  List<Object> get props => [pizza];
}
class RemovePizza extends PizzaEvent{
  final Pizza pizza;
  RemovePizza(this.pizza);
   @override
  List<Object> get props => [pizza];
}