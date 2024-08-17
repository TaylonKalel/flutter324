import 'package:mobx/mobx.dart';

part 'home.store.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
