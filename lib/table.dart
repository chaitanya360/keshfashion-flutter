import 'dart:html';

import 'package:apitutorials/jobcard_details.dart';
import 'package:flutter/material.dart';

class JobcardsTable extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<JobcardsTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          // padding: EdgeInsets.symmetric(vertical: 10.0,),
          child: Text(
            'Jobcards under approval',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              height: 3,
            ),
          ),
        ),
        DataTable(
          columns: [
            DataColumn(
                label: Text('ID',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Client',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Date',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),

            DataColumn(
                label: Text('Action',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),

            // column with button to view jobcard
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JobcardDetailScreen(
                                  id: 1,
                                )));
                  },
                  child: Text('View',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)))),
            ]),
            DataRow(cells: [
              DataCell(Text('5')),
              DataCell(Text('John')),
              DataCell(Text('Student')),
              DataCell(TextButton(
                  onPressed: () {},
                  child: Text('View',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)))),
            ]),
            DataRow(cells: [
              DataCell(Text('10')),
              DataCell(Text('Harry')),
              DataCell(Text('Leader')),
              DataCell(TextButton(
                  onPressed: () {},
                  child: Text('View',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)))),
            ]),
            DataRow(cells: [
              DataCell(Text('15')),
              DataCell(Text('Peter')),
              DataCell(Text('Scientist')),
              DataCell(TextButton(
                  onPressed: () {},
                  child: Text('View',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)))),
            ]),
          ],
        ),
      ])),
    );
  }
}
