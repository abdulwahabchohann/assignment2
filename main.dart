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
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top profile section
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.green.shade900,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: MediaQuery.of(context).size.width / 2- 60,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fwww.industrialempathy.com%2Fimg%2Fremote%2FZiClJf-1920w.jpg&imgrefurl=https%3A%2F%2Fwww.industrialempathy.com%2Fposts%2Fimage-optimizations%2F&docid=7SySw5zvOgPYAM&tbnid=z4_uU0QB2pe-SM&vet=12ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECDIQAA..i&w=1920&h=1080&hcb=2&ved=2ahUKEwj9hMTT29eIAxWQ9bsIHYByO2gQM3oECDIQAA'),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: MediaQuery.of(context).size.width / 2 - 65,
                  child: Column(

                    children: [
                      Text(
                        'Abdul Wahab',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '+88001712346789',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Account overview section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Account Overview',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 10),

            // Menu options
            _buildMenuItem(Icons.person, 'My Profile', context),
            _buildMenuItem(Icons.shopping_bag, 'My Orders', context),
            _buildMenuItem(Icons.request_quote, 'Refund', context),  // Changed refund icon to request_quote
            _buildMenuItem(Icons.lock, 'Change Password', context),
            _buildMenuItem(Icons.language, 'Change Language', context),
          ],  // <-- Missing this closing bracket for the Column widget
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green.shade900,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(icon, color: Colors.green.shade900),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Handle navigation or action
      },
    );
  }
}
