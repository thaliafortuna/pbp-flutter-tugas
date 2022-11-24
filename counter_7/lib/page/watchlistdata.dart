// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/form_mywatchlist.dart';

// class WatchListData extends StatefulWidget {
//   const WatchListData({Key? key}) : super(key: key);

//   @override
//   State<WatchListData>  createState() => WatchListDataState();
// }


// class WatchListDataState extends State<WatchListData> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Watchlist Details'),
//         ),
//         drawer: Drawer(
//         child: Column(
//           children: [
//             // Menambahkan clickable menu
//             ListTile(
//               title: const Text('Counter'),
//               onTap: () {
//                 // Route menu ke halaman utama
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MyHomePage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text('Tambah Budget'),
//               onTap: () {
//                 // Route menu ke halaman form_tambah
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MyFormPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text('Data Budget'),
//               onTap: () {
//                 // Route menu ke halaman form_data
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MyDataPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text('My Watch List'),
//               onTap: () {
//                 // Route menu ke halaman form_data
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MyWatchListPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//         ),
//         body: Column(children: [
//         Text(MyWatchlistData.fetcher.title),
//         Text('Release Date : ' + MyWatchlistData.fetcher.releaseDate),
//         Text('Rating : ' + MyWatchlistData.fetcher.rating.toString()),
//         Text('Status : ' + MyWatchlistData.showStatus()),
//         Text('Review : ' + MyWatchlistData.fetcher.review),
        
//         const Spacer(),
        
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Back'),
//         ),
//       ]),
//     );
//   }
// }
//             // Text(
//             //   MyWatchlistData.fetcher.rating,
//             //   style: const TextStyle(
//             //     fontSize: 30,
//             //     fontWeight: FontWeight.bold,
//             //   ),
//             // ),
//             // RichText(
//             //   text: TextSpan(style:const TextStyle(fontSize: 20),
//             //   children: [
//             //     // const TextSpan(text:'Release Date: ', style: TextStyle(fontSize: 20)),
//             //     // TextSpan(text: MyWatchlistData.fetcher.releaseDate),
//             //     const TextSpan(text:'Rating: ', style: TextStyle(fontSize: 20)),
//             //     TextSpan(text: MyWatchlistData.fetcher.rating.toString()),
//             //     // const TextSpan(text:'Status: ', style: TextStyle(fontSize: 20)),
//             //     // TextSpan(text: MyWatchlistData.showStatus()),
//             //     // const TextSpan(text:'Review: ', style: TextStyle(fontSize: 20)),
//             //     // TextSpan(text: MyWatchlistData.fetcher.review.toString()),
//             //   ]
//             //   )
//             // ),
// //             Text('Release Date : ' + MyWatchlistData.fetcher.releaseDate),
// //             Text("Rating : " + MyWatchlistData.fetcher.rating),
// //             // Text("Status : " + MyWatchlistData.fetcher., style: const TextStyle(fontSize: 20)),
// //             Text("Review : " + MyWatchlistData.fetcher.review, style: const TextStyle(fontSize: 20)),
// //             const SizedBox(height: 10),
// //             TextButton(
// //               style: ButtonStyle(
// //                 backgroundColor: MaterialStateProperty.all(Colors.blue),
// //               ),
// //               onPressed: () {
// //                 Navigator.pop(context);
// //               },
// //               child: Align(
// //                 alignment: Alignment.center,
// //                 child: const Text(
// //                   "Back",
// //                   style: TextStyle(color: Colors.white),
// //                   textAlign: TextAlign.center
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //         ),
// //     );
// //   }
// // }

// class MyWatchlistData{
//   static late Fields _getFields;
//   static Fields get fetcher => _getFields;
//   static String status = "Pending";
//   static String showStatus() {
//     if (_getFields.watched == "watched") {
//       status = "Watched";
//     }
//     return status;
//   }
// }
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
        Text('Rating : ' + Details.fetcher.rating.toString()),
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