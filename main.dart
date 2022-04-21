import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Passengers'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            _createDataTable()
          ],
        ),
      ),
    );
  }
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }
  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Place')),
      DataColumn(label: Text('Type'))
    ];
  }
  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text('#Aigerim')),
        DataCell(Text('0 A')),
        DataCell(Text('OFFLINE'))
      ]),
      DataRow(cells: [
        DataCell(Text('Arlan')),
        DataCell(Text('0 B')),
        DataCell(Text('OFFLINE'))
      ]),

      DataRow(cells: [
        DataCell(Text('Assel')),
        DataCell(Text('1')),
        DataCell(Text('ONLINE'))
      ]),

      DataRow(cells: [
        DataCell(Text('Temirlan')),
        DataCell(Text('1')),
        DataCell(Text('ONLINE'))
      ]),
      

    ];
  }
}