import 'dart:html';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

enum CLIENT_RESPONSE { approved, rejected }

class JobcardDetailScreen extends StatefulWidget {
  // Declare a field that holds the Todo.
  final int id;
  JobcardDetailScreen({Key? key, required this.id}) : super(key: key);
  late Future<Jobcard> jobcard;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<JobcardDetailScreen> {
  // late Future<Jobcard> jobcard;
  TextEditingController commentController = TextEditingController();
  late Jobcard jobcard;

  @override
  void initState() {
    super.initState();
    // jobcard = fetchJobcard(widget.id);
    jobcard = Jobcard(id: (1), client: "chaitanya");
  }

  CLIENT_RESPONSE? _character = CLIENT_RESPONSE.approved;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Jobcard Details")),
        body: Column(children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: Colors.black)),
              margin: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("ID", jobcard.id.toString()),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("ID", jobcard.id.toString()),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("ID", jobcard.id.toString()),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("ID", jobcard.id.toString()),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                      Container(
                        margin: const EdgeInsets.all(12.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: getJobcardDetailRow("Client Name", "Chaitanya"),
                      ),
                    ],
                  ),
                ],
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.black),
                        controller: commentController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                            hintText: 'comment',
                            fillColor: Color.fromARGB(207, 248, 248, 248),
                            hintStyle: TextStyle(color: Colors.black),
                            filled: true),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Approved'),
                            textColor: Colors.greenAccent,
                            leading: Radio<CLIENT_RESPONSE>(
                              value: CLIENT_RESPONSE.approved,
                              groupValue: _character,
                              onChanged: (CLIENT_RESPONSE? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Rejected'),
                            textColor: Colors.redAccent,
                            leading: Radio<CLIENT_RESPONSE>(
                              value: CLIENT_RESPONSE.rejected,
                              groupValue: _character,
                              onChanged: (CLIENT_RESPONSE? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          print(commentController.text);
                          print(_character);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          width: 200,
                          child: const Center(
                            child: Text('Submit Feedback'),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          )
        ]));
  }
}

class Jobcard {
  final int id;
  final String client;

  Jobcard({required this.id, required this.client});
}

Future<Jobcard> fetchJobcard(id) async {
  final response = await http
      .get(Uri.parse('https://api.jikan.moe/v3/anime/${id}/jobcards/1'));

  if (response.statusCode == 200) {
    var jobcardsJson = jsonDecode(response.body);
    return jobcardsJson;
  } else {
    throw Exception('Failed to load jobcards');
  }
}

const KeyStyle =
    TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);

const ValueStyle = TextStyle(color: Colors.black, fontSize: 18);

Row getJobcardDetailRow(String key, String value) {
  return Row(
    children: [
      Text(key + " : ", style: KeyStyle),
      Text(value, style: ValueStyle),
    ],
  );
}
