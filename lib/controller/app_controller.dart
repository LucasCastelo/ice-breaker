part 'data.dart';

class AppController {
  static final AppController _appController = AppController._internal();

  String getQuestion() {}
  String getPreviousQuestion() {}

  //SINGLETON
  factory AppController() => _appController;
  AppController._internal();
}
