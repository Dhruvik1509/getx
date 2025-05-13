import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Tutorial')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.snackbar('Dhruvik', 'My First Getx Project');
        },
      ),
    );
  }
}

// Card(
//             child: ListTile(
//               title: Text('Getx Dialog Alert-'),
//               subtitle: Text('Getx dialog alert in getx'),
//               onTap: () {
//                 Get.defaultDialog(
//                   titlePadding: EdgeInsets.only(top: 20),
//                   contentPadding: EdgeInsets.all(20),
//                   title: 'Delete Chat',
//                   middleText: 'Are you sure you want to delete this chat',
//                   confirm: TextButton(onPressed: () {
//                     Get.back();
//                   }, child: Text('Ok')),
//                   cancel: TextButton(onPressed: () {
//
//                   }, child: Text('Cancel'))
//                 );
//               },
//             ),
//           ),
//           Card(
//             child: ListTile(
//               title: Text('Getx Bottom Sheet'),
//               subtitle: Text('Getx dialog alert in getx'),
//               onTap: () {
//                   Get.bottomSheet(
//                     Container(
//                       decoration: BoxDecoration(color: Colors.blue,),
//                       child: Column(
//                         children: [
//                           ListTile(
//                             onTap: () {
//                               print('light');
//                               Get.changeTheme(ThemeData.light());
//                             },
//                             leading: Icon(Icons.light_mode),
//                             title: Text('Light Theme'),
//                           ),
//                           ListTile(
//                             onTap: () {
//                               print('Dark');
//                               Get.changeTheme(ThemeData.dark());
//                             },
//                             leading: Icon(Icons.dark_mode),
//                             title: Text('Dark Theme'),
//                           ),
//                         ],
//                       ),
//                     )
//                   );
//               },
//             ),
//           ),

// TextButton(onPressed: () {
// Get.toNamed('/secode',arguments: [
// 'Dhruvik',
// 'My Name is thes'
// ]);
// }, child: Text('NextScreen'))
