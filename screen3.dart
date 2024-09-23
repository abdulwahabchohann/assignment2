import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            // Profile section
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fhelpx.adobe.com%2Fcontent%2Fdam%2Fhelp%2Fen%2Fphotoshop%2Fusing%2Fconvert-color-image-black-white%2Fjcr_content%2Fmain-pars%2Fbefore_and_after%2Fimage-before%2FLandscape-Color.jpg&imgrefurl=https%3A%2F%2Fhelpx.adobe.com%2Fphotoshop%2Fusing%2Fconvert-color-image-black-white.html&docid=AOz9-XMe1ixZJM&tbnid=2DNOEjVi-CBaYM&vet=12ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECEgQAA..i&w=1601&h=664&hcb=2&ved=2ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECEgQAA'), // Add your image asset here
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Abdul Wahab',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Main content with subjects
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildSubjectCard('Science', Icons.science),
                  _buildSubjectCard('Mathematics', Icons.calculate),
                  _buildSubjectCard('English', Icons.language),
                  _buildSubjectCard('Logical Reasoning', Icons.psychology),
                  _buildSubjectCard('History', Icons.history_edu),
                  _buildSubjectCard('Civic', Icons.gavel),
                ],
              ),
            ),
          ],
        ),
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: 0, // Default to the first tab
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.local_activity), label: 'Activities'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmarks'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          ],
        ),
      ),
    );
  }

  // Widget for building subject cards
  Widget _buildSubjectCard(String title, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.blue,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            '25 Videos\n345 Goals\n322 Concepts',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}