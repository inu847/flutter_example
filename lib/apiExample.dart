import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiExample extends StatelessWidget {
  const ApiExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Api Example')),
        ),
        body: FutureBuilder<List<dynamic>>(
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(); // Loading indicator
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      // Parse JSON data into list of Data objects
                      List<Data> dataList = (snapshot.data as List).map((item) => Data.fromJson(item)).toList();

                      return ListView.builder(
                        itemCount: dataList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(dataList[index].name),
                            subtitle: Text(dataList[index].email),
                            // PHONE
                            trailing: Text(dataList[index].phone.toString()),
                            // JOB
                            leading: Text(dataList[index].job.toString()),
                          );
                        },
                      );
                    }
                  },
                )
      ),
    );
  }
}

Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('https://retoolapi.dev/noCPPI/data'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data
      return json.decode(response.body);
    } else {
      // If the server returns an error response, throw an exception
      throw Exception('Failed to load data');
    }
  }

class Data {
  final int id;
  final String name;
  final String? job;
  final String email;
  final String? phone;
  // Add more fields as needed

  Data({required this.id, required this.name, this.job, required this.email, this.phone});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
