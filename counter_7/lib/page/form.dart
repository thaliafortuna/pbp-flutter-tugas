// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form_mywatchlist.dart';

class Data{
  static List<String> listJudul = [];
  static List<int> listNominal = [];
  static List<String> listJenis = [];
}

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String judul = "";
    int nominal = 0;
    String jenisPilihan = 'Pengeluaran';
    List<String> jenisBudget = ['Pengeluaran', 'Pemasukan'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form'),
            ),
            // Menambahkan drawer menu
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
                          // Route menu ke halaman form_data
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                          );
                      },
                    ),
                  ],
                ),
              ),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            // Menggunakan padding sebesar 8 pixels
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Contoh: Membeli sate pacil",
                                    labelText: "Judul",
                                    // Menambahkan icon agar lebih intuitif
                                    // Menambahkan circular border agar lebih rapi
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                // Menambahkan behavior saat nama diketik 
                                onChanged: (String? value) {
                                    setState(() {
                                        judul = value!;
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                        judul = value!;
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Judul tidak boleh kosong!';
                                    }
                                    return null;
                                },
                            ),
                        ),
                        Padding(
                            // Menggunakan padding sebesar 8 pixels
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Contoh: 15000",
                                    labelText: "Nominal",
                                    // Menambahkan icon agar lebih intuitif
                                    // Menambahkan circular border agar lebih rapi
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                // Menambahkan behavior saat nominal diketik 
                                onChanged: (String? value) {
                                    setState(() {
                                        nominal = int.parse(value!);
                                    });
                                },
                                // Menambahkan behavior saat data disimpan
                                onSaved: (String? value) {
                                    setState(() {
                                        nominal = int.parse(value!);
                                    });
                                },
                                // Validator sebagai validasi form
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Nominal tidak boleh kosong!';
                                    }
                                    return null;
                                },
                            ),
                        ),
                        ListTile(
                          title: const Text(
                              'Pilih Jenis',
                          ),
                          trailing: DropdownButton(
                              value: jenisPilihan,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: jenisBudget.map((String items) {
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                              );
                              }).toList(),
                              onChanged: (String? newValue) {
                              setState(() {
                                  jenisPilihan = newValue!;
                              });
                              },
                          ),
                        ),
                        TextButton(
                          child: Align(
                            alignment: Alignment.center,
                            child: const Text(
                              "Simpan",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Data.listJudul.add(judul);
                              Data.listNominal.add(nominal);
                              Data.listJenis.add(jenisPilihan);
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 15,
                                    child: ListView(
                                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                                      shrinkWrap: true,
                                      children: <Widget>[
                                        const Center(child: Text('Data Berhasil Ditambahkan')),
                                        const SizedBox(height: 20),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Kembali'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                  ),
                ),
              ),
            ),
        );
    }
}