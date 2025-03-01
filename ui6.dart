import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MedicineScheduleScreen(),
    );
  }
}

class MedicineScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Harry!", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
            Text("5 Medicines Left", style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.blue),
            onPressed: () {},
          ),
          CircleAvatar(
//             backgroundImage: AssetImage('assets/profile.jpg'), // Replace with actual image
          ),
          SizedBox(width: 10),
        ],
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Selector
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Saturday, Sep 3",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Morning Schedule
            Text("Morning 08:00 am", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            _medicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 01", "Taken", Icons.notifications_active, Colors.green),
            _medicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 27", "Missed", Icons.notifications_off, Colors.red),
            
            SizedBox(height: 20),

            // Afternoon Schedule
            Text("Afternoon 02:00 pm", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            _medicineCard("Calpol 500mg Tablet", "After Food", "Day 01", "Snoozed", Icons.notifications_paused, Colors.orange),

            SizedBox(height: 20),

            // Night Schedule
            Text("Night 09:00 pm", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            _medicineCard("Calpol 500mg Tablet", "Before Sleep", "Day 03", "Left", Icons.notifications_none, Colors.grey),
          ],
        ),
      ),

      // Floating Add Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigation
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home, color: Colors.blue), onPressed: () {}),
            SizedBox(width: 40), // Space for Floating Button
            IconButton(icon: Icon(Icons.bar_chart, color: Colors.grey), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  // Medicine Card Widget
  Widget _medicineCard(String name, String timing, String day, String status, IconData icon, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.pink.shade100,
            radius: 24,
            child: Icon(Icons.local_hospital, color: Colors.pink),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("$timing  •  $day", style: TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
          Icon(icon, color: color),
          SizedBox(width: 5),
          Text(status, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
