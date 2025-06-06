import 'package:advanced_flutter/utils/import_export.dart';

class Counterview extends StatefulWidget {
  Counterview({super.key});

  @override
  State<Counterview> createState() => _counter_viewState();
}

class _counter_viewState extends State<Counterview> {
  CounterController _counterController = CounterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(APPBAR_CONTROLLER_VIEW_TITLE)),
    body:Center(child: Text(_counterController.countervalue.toString())),
    floatingActionButton: FloatingActionButton(onPressed: (){
      _counterController.incrementCounter();
      setState(() {});
    }
    ),
    );
  }
}
