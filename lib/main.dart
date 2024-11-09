import 'package:flutter/material.dart';
import 'package:project1/adminlogin.dart';

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
      backgroundColor: Color(0xFFFFF176),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SELAMAT DATANG',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text(
                'MASUK',
                style: TextStyle(fontSize: 20,color: Colors.white),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF176),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'ABSENSI',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(70),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: [
            Text(
              "ABSENSI KARYAWAN PT POLYMER",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50,),
            Image.asset(
              'assets/images/polymer.jpg', 
              width: 300,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text(
                'LOGIN ADMIN',
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminLoginPage()),
                  );
                
              },
              style: ElevatedButton.styleFrom(
                
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              ),
              child: Text(
                'LOGIN KARYAWAN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 40),
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.all(8),
              child: Text(
                'JALAN RAYA PELABUHAN CPO\nKABIL, KEC. NONGSA, KOTA BATAM\nKEPULAUAN RIAU 29467',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
