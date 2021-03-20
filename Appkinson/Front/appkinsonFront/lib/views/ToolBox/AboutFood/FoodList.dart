import 'package:appkinsonFront/routes/RoutesAdmin.dart';
import 'package:appkinsonFront/routes/RoutesDoctor.dart';
import 'package:appkinsonFront/services/EndPoints.dart';
import 'package:appkinsonFront/views/Administrator/FormAddItem.dart';
import 'package:appkinsonFront/views/Login/Buttons/ButtonLogin.dart';
import 'package:flutter/material.dart';

import 'package:appkinsonFront/views/ToolBox/item_widget.dart';

class ListFood extends StatefulWidget {
  @override
  _ListFoodState createState() => _ListFoodState();
}
List<ItemToolbox> food =  List<ItemToolbox>();
var id = 0;
class _ListFoodState extends State<ListFood> {

  @override
  final key = GlobalKey<AnimatedListState>();
  //List<AlarmInfo> food;
  DateTime _alarmTime;
  String _alarmTimeString;

  //AlarmInfo alarm;
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,
    appBar: AppBar(
      title: Text("Comida"),
    ),
    body: Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: key,
            initialItemCount: food.length,
            itemBuilder: (context, index, animation) =>
                buildItem(food[index], index, animation),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: buildInsertButton(),
        ),
      ],
    ),
  );

  Widget buildItem(item, int index, Animation<double> animation) =>
      ItemToolboxWidgetGeneral(
        item: item,
        animation: animation,
        onClicked: () => removeItem(index),
      );


  Widget buildInsertButton() => RaisedButton(
    child: Icon(Icons.add, size: 50, color: Colors.lightGreen,),
    color: Colors.white,
    onPressed: () {
      RoutesAdmin().toFormAddItem(context);
    },
  );

 /* void insertItem(int index, AlarmAndMedicine item) {
    food.insert(index, item);
    key.currentState.insertItem(index);
    Navigator.pop(context);
  }*/

  void removeItem(int index) {
    EndPoints().deleteAlarm(index.toString(), token, currentUser['id'].toString());
    final item = food.removeAt(index);

    key.currentState.removeItem(
      index,
          (context, animation) => buildItem(item, index, animation),
    );
  }
}
