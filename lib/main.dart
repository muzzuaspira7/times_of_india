import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:times_of_india/utils/AppColors.dart';
import 'package:xml2json/xml2json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Fetching the datas
  Future<void> fetchData() async {
    const String apiUrl =
        // 'https://timesofindia.indiatimes.com/rssfeedstopstories.cms';
        'https://timesofindia.indiatimes.com/rssfeedstopstories.cms';

    try {
      final Response response = await get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Successfully fetched data, now parse XML to JSON
        final Xml2Json xml2json = Xml2Json();
        xml2json.parse(response.body);

        // Get the JSON data
        final String jsonData = xml2json.toGData();

        // Use the jsonData as per your requirement
        print('Parsed JSON Data: ${jsonData[0]}');
      } else {
        // Handle error
        log('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exception
      print('Exception: $e');
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
      body: Container(
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
                    'Top Headline',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                // height: 60,
                width: double.infinity,
                // child: Image.network(
                //     'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg'),
              ),
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
              //   Expanded(
              //     child: ListView(
              //       shrinkWrap: true,
              //       children: const [
              //         Card(
              //           child: ListTile(
              //             title: Text('Chennai railways station'),
              //             subtitle: Text(
              //                 'Today Someone killed very badly to someone else '),
              //             leading: SizedBox(
              //               height: 50,
              //               width: 50,
              //               child: CircleAvatar(
              //                   radius: 5,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
              //             ),
              //           ),
              //         ),
              //         Card(
              //           child: ListTile(
              //             title: Text('Chennai railways station'),
              //             subtitle: Text(
              //                 'Today Someone killed very badly to someone else '),
              //             leading: SizedBox(
              //               height: 50,
              //               width: 50,
              //               child: CircleAvatar(
              //                   radius: 5,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
              //             ),
              //           ),
              //         ),
              //         Card(
              //           child: ListTile(
              //             title: Text('Chennai railways station'),
              //             subtitle: Text(
              //                 'Today Someone killed very badly to someone else '),
              //             leading: SizedBox(
              //               height: 50,
              //               width: 50,
              //               child: CircleAvatar(
              //                   radius: 5,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
              //             ),
              //           ),
              //         ),
              //         Card(
              //           child: ListTile(
              //             title: Text('Chennai railways station'),
              //             subtitle: Text(
              //                 'Today Someone killed very badly to someone else '),
              //             leading: SizedBox(
              //               height: 50,
              //               width: 50,
              //               child: CircleAvatar(
              //                   radius: 5,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
              //             ),
              //           ),
              //         ),
              //         Card(
              //           child: ListTile(
              //             title: Text('Chennai railways station'),
              //             subtitle: Text(
              //                 'Today Someone killed very badly to someone else '),
              //             leading: SizedBox(
              //               height: 50,
              //               width: 50,
              //               child: CircleAvatar(
              //                   radius: 5,
              //                   backgroundImage: NetworkImage(
              //                       'https://www.hindustantimes.com/ht-img/img/2024/02/17/550x309/ANI-20240207217-0_1708162202594_1708162279851.jpg')),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   )
              ElevatedButton(
                  onPressed: () async {
                    await fetchData();
                  },
                  child: const Text('gyhg'))
            ],
          )),
    );
  }
}
