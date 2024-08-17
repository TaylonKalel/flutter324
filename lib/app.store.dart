import 'package:mobx/mobx.dart';

part 'app.store.g.dart';

// ignore: library_private_types_in_public_api
class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {}
