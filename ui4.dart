import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi Harry!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text("5 Medicines Left",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            Spacer(),
            Icon(Icons.health_and_safety, color: Colors.blue),
            SizedBox(width: 8),
            CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://randomuser.me/api/portraits/men/1.jpg"),
              radius: 16,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDeviceNotConnectedDialog(context);
              },
              child: Text("Show Popup"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDeviceNotConnectedDialog(context);
        },
        child: Icon(Icons.add, size: 30,color:Colors.white),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: Icon(Icons.home, color: Colors.black), onPressed: () {}),
            SizedBox(width: 40), // Space for floating button
            IconButton(icon: Icon(Icons.bar_chart, color: Colors.black), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  void showDeviceNotConnectedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Your Device is not connected",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
//                 Image.network(
//                   "https://cdn-icons-png.flaticon.com/512/4712/4712036.png", // Replace with actual robot image
//                   height: 120,
//                 ),
                SizedBox(height: 16),
                Text("Connect your device with"),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.bluetooth),
                        label: Text(""),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.wifi),
                        label: Text(""),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
