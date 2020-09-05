import 'package:delivery_thizer/app/controller/counter.dart';
import 'package:delivery_thizer/app/ui/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Counter extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Você clicou este número de vezes'),
            GetX<CounterController>(builder: (counter) {
              return Text(
                '${counter.val.string}',
                style: TextStyle(fontSize: 48),
              );
            }),
          ],
        ),
      ),
      fab: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'hhahah',
            onPressed: () => controller.decrement(),
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => controller.increment(),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
