
import 'package:advanced_flutter/utils/import_export.dart';

class CounterController{
  CounterModel _counterModel = CounterModel();
  int get countervalue => _counterModel.counter;
  void incrementCounter()=> _counterModel.incrementCounter();
}