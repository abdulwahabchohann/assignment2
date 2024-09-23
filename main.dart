import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top wavy background with shades of purple
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade300, Colors.purple.shade100],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  // Profile Image
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fdfstudio-d420.kxcdn.com%2Fwordpress%2Fwp-content%2Fuploads%2F2019%2F06%2Fdigital_camera_photo-1080x675.jpg&imgrefurl=https%3A%2F%2Fwww.dfstudio.com%2Fdigital-image-size-and-resolution-what-do-you-need-to-know%2F&docid=KEFtss0dYCDpzM&tbnid=0kl2WrGN8BrkhM&vet=12ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECF8QAA..i&w=1080&h=675&hcb=2&ved=2ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECF8QAA'),
                  ),
                  SizedBox(height: 20),
                  // Name and Joined Info
                  Text(
                    'Abdul Wahab',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade900,
                    ),
                  ),
                  Text(
                    'Joined Nov, 2024',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(height: 30),
                  // Quote of the Day
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Quote of the day',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade900,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Keep your face to the sunshine and you cannot see a shadow.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '- LEBRON JAMES',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // Zen Master Progress
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ZEN MASTER',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '220/300',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        LinearProgressIndicator(
                          value: 220 / 300,
                          backgroundColor: Colors.purple.shade200,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'LV 4',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  // Stats section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatsItem('23', 'Completed Sessions'),
                      _buildStatsItem('94', 'Minutes Spent'),
                      _buildStatsItem('15 days', 'Longest Streak'),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Share My Stats Button
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(Icons.share, color: Colors.white),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Share My Stats',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade900,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
