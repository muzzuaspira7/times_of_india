import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:times_of_india/utils/AppColors.dart';
import 'package:times_of_india/view/details.dart';
import 'package:xml2json/xml2json.dart';

import '../model/ModelApi.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Fetching the data
  // Future<void> fetchData() async {
  //   const String apiUrl =
  //       'https://timesofindia.indiatimes.com/rssfeedstopstories.cms';
  //   try {
  //     final http.Response response = await http.get(Uri.parse(apiUrl));
  //     if (response.statusCode == 200) {
  //       // Successfully fetched data, now parse XML to JSON
  //       final Xml2Json xml2json = Xml2Json();
  //       xml2json.parse(response.body);
  //       // Get the JSON data
  //       final String jsonData = xml2json.toParker();
  //       // Use the jsonData as per your requirement
  //       print('Parsed JSON Data: $jsonDecode($jsonData)');
  //     } else {
  //       // Handle error
  //       print('Error: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     // Handle exception
  //     print('Exception: $e');
  //   }
  // }

  Future<List<ModelApi>> fetchApi() async {
    var response = await http.get(Uri.parse(
        'https://timesofindia.indiatimes.com/rssfeedstopstories.cms'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ModelApi> products =
          data.map((json) => ModelApi.fromJson(json)).toList();

      print(jsonEncode(data[0]));
      print(data.length);
      return products;
    } else {
      print('Eroorrrrrrrrrrrrrrrrrr');
      throw Exception('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.appBarColor,
        title: const Text(
          'TimesOfIndia',
          style: TextStyle(color: AppColor.containerColor),
        ),
      ),
      body: Expanded(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColor.backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.arrow_right),
                    Text(
                      'Todays News',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      Card(
                        child: ListTile(
                          title: Text('Chennai railways station'),
                          subtitle: Text(
                              'Today Someone killed very badly to someone else '),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                                radius: 5,
                                backgroundImage: NetworkImage(
                                    'https://miro.medium.com/v2/resize:fit:743/0*S3e8HT3hN-_7tYWX.png')),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Chennai railways station'),
                          subtitle: Text(
                              'Today Someone killed very badly to someone else '),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                                radius: 5, backgroundImage: NetworkImage(
                                    // 'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
                                    'https://miro.medium.com/v2/resize:fit:743/0*S3e8HT3hN-_7tYWX.png')),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Chennai railways station'),
                          subtitle: Text(
                              'Today Someone killed very badly to someone else '),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                                radius: 5, backgroundImage: NetworkImage(
                                    // 'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
                                    'https://miro.medium.com/v2/resize:fit:743/0*S3e8HT3hN-_7tYWX.png')),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Chennai railways station'),
                          subtitle: Text(
                              'Today Someone killed very badly to someone else '),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                                radius: 5, backgroundImage: NetworkImage(
                                    // 'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
                                    'https://miro.medium.com/v2/resize:fit:743/0*S3e8HT3hN-_7tYWX.png')),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title: Text('Chennai railways station'),
                          subtitle: Text(
                              'Today Someone killed very badly to someone else '),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                                radius: 5, backgroundImage: NetworkImage(
                                    // 'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
                                    'https://miro.medium.com/v2/resize:fit:743/0*S3e8HT3hN-_7tYWX.png')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      print('Printing here');
                      fetchApi();
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => DetailsPage()));
                    },
                    child: const Text('gyhg'))
              ],
            )),
      ),
    );
  }
}
