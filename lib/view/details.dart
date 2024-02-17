import 'package:flutter/material.dart';
import 'package:times_of_india/model/ModelApi.dart';
import 'package:times_of_india/utils/AppColors.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage(ModelApi modelApi, {super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Description Page')),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const Image(
                    image: NetworkImage(
                      'https://img.jagranjosh.com/images/2023/December/10122023/school-assembly-headlines-december-11.webp',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Instagram is working on some stuff, and those Instagram Comments are much crazier than the Video',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color.fromARGB(255, 211, 211, 211),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Published on 12, Jan 2023',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColor.appBarColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'NEW DELHI: "There is no question of him leaving the party!" This was the first response of Congress leader Digvijaya Singh when asked about rumours of Kamal Nath quitting the grand old party.'),
                FloatingActionButton.extended(
                  isExtended: true,
                  onPressed: () {},
                  label: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://qph.cf2.quoracdn.net/main-qimg-ed060e28837ac92bae6fff6f068eee04-lq'),
                      ),
                      Text('Published by Muzzu')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://qph.cf2.quoracdn.net/main-qimg-ed060e28837ac92bae6fff6f068eee04-lq'),
                  ),
                  Text('Published by Muzzu'),
                ])));
  }
}
