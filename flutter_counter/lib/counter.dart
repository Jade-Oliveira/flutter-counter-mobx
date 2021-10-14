import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  //Store aponta que vão ter que ser observadas todas as anotations

  //torna essa varável um observable
  @observable
  int count = 0;

  //torna essa função uma action
  @action
  void increment() {
    count++;
  }

  // Counter() {
  //   //passa a função increment por construtor
  //   increment = Action(_increment);
  // }

  // //estado do contador, 0 é o valor inicial
  // Observable _count = Observable(0);

  // //dá acesso ao valor do _count por meio da variável count
  // int get count => _count.value;

  //ação para modificar minha contagem
  // Action? increment;

  // void _increment() {
  //   _count.value++;
  // }
}
