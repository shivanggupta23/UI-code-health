import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
//                   backgroundImage: AssetImage('assets/profile.jpg'), // Replace with actual image
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Take Care!", style: TextStyle(color: Colors.grey)),
                    Text("Richa Bose",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),

            // Settings Section
            Text("Settings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            _settingsItem(Icons.notifications, "Notification", "Check your medicine notification"),
            _settingsItem(Icons.volume_up, "Sound", "Ring, Silent, Vibrate"),
            _settingsItem(Icons.person, "Manage Your Account", "Password, Email ID, Phone Number"),
            _settingsItem(Icons.notifications, "Notification", "Check your medicine notification"),
            _settingsItem(Icons.notifications, "Notification", "Check your medicine notification"),
            
            SizedBox(height: 24),

            // Device Section
            Text("Device", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _deviceItem(Icons.volume_up, "Connect", "Bluetooth, Wi-Fi"),
                  SizedBox(height: 8),
                  _deviceItem(Icons.volume_up, "Sound Option", "Ring, Silent, Vibrate", isWhite: true),
                ],
              ),
            ),
            
            SizedBox(height: 24),

            // Caretakers Section
            Text("Caretakers: 03", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  _caretakerAvatar("Dipa Luna"),
                  _caretakerAvatar("Roz Sod.."),
                  _caretakerAvatar("Sunny Tu.."),
                  _caretakerAvatar("Sunny Tu.."),
                  _caretakerAvatar("Sunny Tu.."),
                  _caretakerAvatar("Sunny Tu.."),
                  _caretakerAvatar("Sunny Tu.."),
                  _addCaretakerButton(),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Doctor Section
            Text("Doctor", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(230),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 24,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text("Add Your Doctor", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text.rich(
                    TextSpan(
                      text: "Or use ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: "invite link",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Other Options
            _optionItem("Privacy Policy"),
            _optionItem("Terms of Use"),
            _optionItem("Rate Us"),
            _optionItem("Share"),

            SizedBox(height: 24),

            // Log Out Button
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 250),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {},
                child: Text("Log Out", style: TextStyle(color: Colors.black)),
              ),
            ),

            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Widget for settings item
  Widget _settingsItem(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.grey),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
    );
  }

  // Widget for device items
  Widget _deviceItem(IconData icon, String title, String subtitle, {bool isWhite = false}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isWhite ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  // Caretaker avatar widget
  Widget _caretakerAvatar(String name) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          CircleAvatar(radius: 24, backgroundColor: Colors.grey.shade300),
          SizedBox(height: 4),
          Text(name, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  // Add caretaker button
  Widget _addCaretakerButton() {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          CircleAvatar(radius: 24, backgroundColor: Colors.grey.shade300, child: Icon(Icons.add)),
          SizedBox(height: 4),
          Text("Add", style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  // Simple option item widget
  Widget _optionItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}
