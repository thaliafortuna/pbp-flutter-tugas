// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/form_mywatchlist.dart';



class MyWatchListDetailsPage extends StatefulWidget {
  const MyWatchListDetailsPage({Key? key}) : super(key: key);

  @override
  _MyWatchListDetailsPageState createState() => _MyWatchListDetailsPageState();
}

class _MyWatchListDetailsPageState extends State<MyWatchListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watchlist'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                  // Route menu ke halaman watch list
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                  );
              },
            ),
          ],
        ),
      ),
      body: Column(children: [
        Text(Details.fetcher.title),
        Text('Release Date : ' + Details.fetcher.releaseDate),
        Text('Rating : ' + Details.fetcher.rating),
        Text('Status : ' + Details.getStatus()),
        Text('Review : ' + Details.fetcher.review),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ]),
    );
  }
}


class Details {
  static late Fields getFields;
  static Fields get fetcher => getFields;
  static String status = "Pending";

  static String getStatus() {
    if (getFields.watched == 'Watched') {
      status = "Watched";
    }
    return status;
  }
}