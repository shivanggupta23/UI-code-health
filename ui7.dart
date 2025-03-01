import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReportScreen(),
    );
  }
}

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Report",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today's Report
            _todayReportSection(),

            SizedBox(height: 16),

            // Check Dashboard
            _checkDashboardSection(),

            SizedBox(height: 16),

            // Check History
            _checkHistorySection(),

            SizedBox(height: 20),

            // Morning Schedule
            Text("Morning 08:00 am", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            _medicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 01", "Taken", Icons.notifications_active, Colors.green),
            _medicineCard("Calpol 500mg Tablet", "Before Breakfast", "Day 27", "Missed", Icons.notifications_off, Colors.red),
            
            SizedBox(height: 20),

            // Afternoon Schedule
            Text("Afternoon 02:00 pm", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            _medicineCard("Calpol 500mg Tablet", "After Food", "Day 01", "Snoozed", Icons.notifications_paused, Colors.orange),
          ],
        ),
      ),

      // Floating Add Button
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Colors.black,
        
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigationshape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
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

  // Today's Report Widget
//   Widget _todayReportSection() {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey.shade50,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Today's Report", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//           SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _reportItem("5", "Total"),
//               _reportItem("3", "Taken"),
//               _reportItem("1", "Missed"),
//               _reportItem("1", "Snoozed"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
  
  Widget _todayReportSection() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white, // Background set to white
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300, // Light shadow for depth
          offset: Offset(2, 2), // Slight right-bottom offset
          blurRadius: 6, // Soft blur
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Colors.grey.shade100, // Subtle highlight
          offset: Offset(-2, -2), // Slight top-left offset for 3D effect
          blurRadius: 6,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Today's Report", 
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reportItem("5", "Total"),
            _reportItem("3", "Taken"),
            _reportItem("1", "Missed"),
            _reportItem("1", "Snoozed"),
          ],
        ),
      ],
    ),
  );
}


  // Single Report Item
  Widget _reportItem(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
        Text(label, style: TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }

  // Check Dashboard Section
//   Widget _checkDashboardSection() {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.blueGrey.shade50,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Check Dashboard", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//               SizedBox(height: 4),
//               Text("Here you will find everything related to your active and past medicines.",
//                   style: TextStyle(color: Colors.grey, fontSize: 14)),
//             ],
//           ),
//           Icon(Icons.pie_chart, color: Colors.blue, size: 40),
//         ],
//       ),
//     );
//   }
Widget _checkDashboardSection() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white, // Background set to white
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300, // Light shadow for depth
          offset: Offset(2, 2), // Slight right-bottom offset
          blurRadius: 6, // Soft blur
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Colors.grey.shade100, // Subtle highlight
          offset: Offset(-2, -2), // Slight top-left offset for 3D effect
          blurRadius: 6,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Check Dashboard",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "Here you will find everything related to your active and past medicines.",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        Icon(Icons.pie_chart, color: Colors.blue, size: 40),
      ],
    ),
  );
}

  // Check History Section
  Widget _checkHistorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Check History", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.blue),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(6, (index) {
            return _dayItem("${index + 1}", index == 0); // Select the first day
          }),
        ),
      ],
    );
  }

  // Single Day Item
  Widget _dayItem(String day, bool isSelected) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child: Text(day, style: TextStyle(color: isSelected ? Colors.white : Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
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
            backgroundColor: Colors.blueAccent.shade100,
            radius: 24,
            child: Icon(Icons.local_hospital, color: Colors.purple),
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
