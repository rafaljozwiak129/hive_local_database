import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference to box made in main.dart
  final _myBox = Hive.box('box');

  // write new data to 'box' local database
  void writeData(){
    _myBox.put(1, 'Anthony');
    // so you add string with key "1"
  }
  // read data
  void readData(){
    print(_myBox.get(1));
    // to get data from your database we call key value
  }
  // delete data
  void deleteData(){
    _myBox.delete(1);
    // same with deleting
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.purple.shade200,
            ),MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.purple.shade200,
            ),MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.purple.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
