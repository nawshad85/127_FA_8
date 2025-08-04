import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ID Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student ID card"),
          backgroundColor: Colors.blue.shade200,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              // color: Colors.lightBlue,
            color: Color(0xFFB3E5FC),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://freepngdesign.com/content/uploads/images/t_student-emoji-9482.png"),
                      radius: 50,
                    )
                  ),
                  ListTile(
                    title: Text("Abrar Sami Nawshad", textAlign: TextAlign.center, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    subtitle: Text("Batch: 61st, Department of CSE", textAlign: TextAlign.center)
                  ),
                  Divider(thickness: 1.5, color: Colors.grey),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.person, size: 20),
                      SizedBox(width: 10),
                      Text("ID: 01822310012101127")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.email, size: 20),
                      SizedBox(width: 10),
                      Text("Email: abrarsami2021@gmail.com")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.phone, size: 20),
                      SizedBox(width: 10),
                      Text("Phone: 01877422003")
                    ],
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ));
  }
}