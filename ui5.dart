import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddMedicineScreen(),
    );
  }
}

class AddMedicineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text("Add Medicines",
            style: TextStyle(color: Colors.black, fontSize: 18)),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search Medicine Name",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Compartment Selection
            Text("Compartment", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                (index) => Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.blue.shade100 : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("${index + 1}"),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Color Selection
            Text("Colour", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                (index) => CircleAvatar(
                  backgroundColor: [
                    Colors.purple,
                    Colors.blue,
                    Colors.red,
                    Colors.green,
                    Colors.orange,
                    Colors.yellow
                  ][index],
                  radius: 16,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Medicine Type
            Text("Type", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _pillType("Tablet"),
                _pillType("Capsule"),
                _pillType("Cream"),
              ],
            ),
            SizedBox(height: 20),

            // Quantity Selection
            Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Take 1/2 Pill"),
                  ),
                ),
                SizedBox(width: 10),
                _quantityButton(Icons.remove),
                SizedBox(width: 10),
                _quantityButton(Icons.add),
              ],
            ),
            SizedBox(height: 20),

            // Total Count
            Text("Total Count", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: 1,
                    min: 1,
                    max: 100,
                    onChanged: (value) {},
                  ),
                ),
                Text("01"),
              ],
            ),
            SizedBox(height: 20),

            // Set Date
            Text("Set Date", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dateSelector("Today"),
                _dateSelector("End Date"),
              ],
            ),
            SizedBox(height: 20),

            // Frequency
            Text("Frequency of Days", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            _dropdownSelector("Everyday"),
            SizedBox(height: 20),

            // How Many Times a Day
            Text("How many times a Day", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            _dropdownSelector("Three Time"),
            SizedBox(height: 20),

            // Dose Timings
            _doseTiming("Dose 1"),
            _doseTiming("Dose 2"),
            _doseTiming("Dose 3"),
            SizedBox(height: 20),

            // Food Selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _foodSelection("Before Food", true),
                _foodSelection("After Food", false),
                _foodSelection("Before Sleep", false),
              ],
            ),
            SizedBox(height: 20),

            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pillType(String label) {
    return Column(
      children: [
        Icon(Icons.local_pharmacy, size: 40, color: Colors.pink.shade200),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _quantityButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.blue),
    );
  }

  Widget _dateSelector(String label) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Icon(Icons.calendar_today, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _dropdownSelector(String label) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Icon(Icons.arrow_drop_down, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _doseTiming(String label) {
    return ListTile(
      leading: Icon(Icons.access_time, color: Colors.grey),
      title: Text(label),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
    );
  }

  Widget _foodSelection(String label, bool selected) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? Colors.blue.shade200 : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.black)),
    );
  }
}

