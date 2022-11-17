// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  final _formKey = GlobalKey<FormState>();
  List<String> listJudul = Data.listJudul;
  List<int> listNominal = Data.listNominal;
  List<String> listJenis = Data.listJenis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      // Drawer menu
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
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: listJudul.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              listJudul[index],
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(listNominal[index].toString()),
                            Text(listJenis[index]),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
