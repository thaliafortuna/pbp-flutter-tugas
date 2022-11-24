// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/watchlistdata.dart';
import 'package:counter_7/model/watchlist.dart';

// // class MyWatchlistData {
// //   static late Fields _getFields;
// //   static Fields get fetcher => _getFields;
// //   static String status = "Pending";

// //   static String showStatus() {
// //     if (_getFields.watched == "watched") {
// //       status = "Watched";
// //     }
// //     return status;
// //   }
// // }



// // class MyWatchListPage extends StatefulWidget {
// //     const MyWatchListPage({Key? key}) : super(key: key);

// //     @override
// //     WatchListPageState createState() => WatchListPageState();
// // }

// class MyWatchlistPage extends StatefulWidget {
//   const MyWatchlistPage({Key? key}) : super(key: key);

//   @override
//   MyWatchlistPageState createState() => MyWatchlistPageState();
// }


// // class MyWatchlistPageState extends State<MyWatchlistPage> {
// //     Future<List<Mywatchlist>> fetchWatchList() async {
// //         var url = Uri.parse("https://aplikasidjango.herokuapp.com/mywatchlist/json/");
// //         var response = await http.get(
// //         url,
// //         headers: {
// //             "Access-Control-Allow-Origin": "*",
// //             "Content-Type": "application/json",
// //         },
// //         );

// //         // melakukan decode response menjadi bentuk json
// //         var data = jsonDecode(utf8.decode(response.bodyBytes));
// //         // melakukan konversi data json menjadi object Mywatchlist
// //         List<Mywatchlist> WatchList = [];
// //         for (var d in data) {
// //           if (d != null) {
// //               WatchList.add(Mywatchlist.fromJson(d));
// //           }
// //         }

// //         return WatchList;
// //     }


// class MyWatchlistPageState extends State<MyWatchlistPage> {
//   Future<List<MyWatchList>> fetchMyWatchlist() async {
//     var url = Uri.parse("https://aplikasidjango.herokuapp.com/mywatchlist/json/");
//     var response = await http.get(
//       url,
//       headers: {
//         "Access-Control-Allow-Origin": "*",
//         "Content-Type": "application/json",

//       },
//     );

//     // melakukan decode response menjadi bentuk json
//     var data = jsonDecode(utf8.decode(response.bodyBytes));

//     // melakukan konversi data json menjadi object
//     List<MyWatchList> listMyWatchlist = [];
//     for (var d in data) {
//       if (d != null) {
//         listMyWatchlist.add(MyWatchList.fromJson(d));
//       }
//     }

//     return listMyWatchlist;
//   }

//     @override
//     Widget build(BuildContext context) {
//         return Scaffold(
//             appBar: AppBar(
//                 title: Text('My Watch List'),
//             ),
//             // Menambahkan drawer menu
//             drawer: Drawer(
//                 child: Column(
//                   children: [
//                     // Menambahkan clickable menu
//                     ListTile(
//                       title: const Text('counter_7'),
//                       onTap: () {
//                         // Route menu ke halaman utama
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => const MyHomePage()),
//                         );
//                       },
//                     ),
//                     ListTile(
//                       title: const Text('Tambah Budget'),
//                       onTap: () {
//                         // Route menu ke halaman form
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => const MyFormPage()),
//                         );
//                       },
//                     ),
//                     ListTile(
//                       title: const Text('Data Budget'),
//                       onTap: () {
//                         // Route menu ke halaman form
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => const MyDataPage()),
//                         );
//                       },
//                     ),
//                     ListTile(
//                       title: const Text('My Watch List'),
//                       onTap: () {
//                           // Route menu ke halaman watch list
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
//                           );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             body: FutureBuilder(
//             future: fetchMyWatchlist(),
//             builder: (context, AsyncSnapshot snapshot) {
//                 if (snapshot.data == null) {
//                 return const Center(child: CircularProgressIndicator());
//                 } else {
//                 if (!snapshot.hasData) {
//                     return Column(
//                     children: const [
//                         Text(
//                         "Tidak ada rekomendasi film:(",
//                         style: TextStyle(
//                             color: Color(0xff59A5D8),
//                             fontSize: 20),
//                         ),
//                         SizedBox(height: 8),
//                     ],
//                     );
//                 } else {
//                     return ListView.builder(
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (_, index)=> Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                         padding: const EdgeInsets.all(20.0),
//                         decoration: BoxDecoration(
//                             color:Colors.white,
//                             borderRadius: BorderRadius.circular(15.0),
//                             boxShadow: const [
//                             BoxShadow(
//                                 color: Colors.black,
//                                 blurRadius: 2.0
//                             )
//                             ]
//                         ),
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Details.getFields =
//                                         snapshot.data![index].fields;
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                             const MyWatchListDetailsPage()
//                                         )
//                                     );
//                                   },
//                                   child: Text(
//                                   "${snapshot.data![index].fields.title}",
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.pink,
//                                   ),
//                                   )
//                                 ),
//                                 const SizedBox(height: 10),
//                             ],
//                         ),
//                         )
//                     );
//                 }
//                 }
//             }
//         )
//     );
//     }
// }


class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  MyWatchlistPageState createState() => MyWatchlistPageState();
}

class MyWatchlistPageState extends State<MyWatchlistPage> {
  Future<List<MyWatchList>> fetchMyWatchlist() async {
    var url = Uri.parse("https://aplikasidjango.herokuapp.com/mywatchlist/json/");
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",

      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object
    List<MyWatchList> listMyWatchlist = [];
    for (var d in data) {
      if (d != null) {
        listMyWatchlist.add(MyWatchList.fromJson(d));
      }
    }

    return listMyWatchlist;
  }

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
        body: FutureBuilder(
            future: fetchMyWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style: TextStyle(
                            color: Color(0xff59A5D8),
                            fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index)=> Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2.0
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10,),
                            TextButton(
                              onPressed: () {
                                Details.getFields =
                                    snapshot.data![index].fields;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const MyWatchListDetailsPage()
                                    )
                                );
                              },
                              child: Text('Details'),
                            ),
                          ],
                        ),
                      )
                  );
                }
              }
            }
        )
    );
  }
}