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
      body: Column(
        children: [
          // Date Selector
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Thu", style: TextStyle(color: Colors.grey)),
                Text("Fri", style: TextStyle(color: Colors.grey)),
                Text("<",style:TextStyle(color:Colors.blue)),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  
                  child: Text("Saturday, Sep 3",
                      style: TextStyle(color: Colors.white)),
                ),
                                Text(">",style:TextStyle(color:Colors.blue)),
                Text("Sun", style: TextStyle(color: Colors.grey)),
                Text("Mon", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          SizedBox(height: 30),
          // Empty State Illustration
          Center(
            child: Column(
              children: [
                Icon(Icons.inbox, size: 80, color: Colors.grey.shade400),
                SizedBox(height: 10),
                Text("Nothing Is Here, Add a Medicine",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        child: Icon(Icons.add, size: 30,color:Colors.white),
//         backgroundColor: Colors.white,
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
            child:Column(
              
              children:[
                
            IconButton(icon: Icon(Icons.home, color: Colors.blue), onPressed: () {}),
//                 Text("HOME")
                  
                ],
              ),
            ),
            SizedBox(width: 40), // Space for floating button
            IconButton(icon: Icon(Icons.bar_chart, color: Colors.black), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
