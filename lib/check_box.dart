import 'package:flutter/material.dart';
import 'package:first_project/check_box.dart';
class Python extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<Python> {
  String? _selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Верхняя строка с иконкой, текстом и аватаром
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
                Text("Python", style: TextStyle(color: Colors.green, fontSize: 20)),
                Spacer(), // Отодвигает аватар вправо
                CircleAvatar(
                  backgroundImage: AssetImage("assets/man.jpg"),
                  radius: 20,
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Is Python case sensitive...",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 50),
                    RadioListTile<String>(
                      title: Text("No", style: TextStyle(color: Colors.white)),
                      value: "No",
                      groupValue: _selectedAnswer,
                      onChanged: (val) => setState(() => _selectedAnswer = val),
                      tileColor: Colors.grey,
                    ),
                    SizedBox(height: 15),
                    RadioListTile<String>(
                      title: Text("Yed", style: TextStyle(color: Colors.white)),
                      value: "Yes",
                      groupValue: _selectedAnswer,
                      onChanged: (val) => setState(() => _selectedAnswer = val),
                      tileColor: Colors.grey,
                    ),
                    SizedBox(height: 15),
                    RadioListTile<String>(
                      title: Text("Machine dependent", style: TextStyle(color: Colors.white)),
                      value: "Machine dependent",
                      groupValue: _selectedAnswer,
                      onChanged: (val) => setState(() => _selectedAnswer = val),
                      tileColor: Colors.grey,
                    ),
                    SizedBox(height: 15),
                    RadioListTile<String>(
                      title: Text("None of the mentionf", style: TextStyle(color: Colors.white)),
                      value: "None of the mentioned",
                      groupValue: _selectedAnswer,
                      onChanged: (val) => setState(() => _selectedAnswer = val),
                      tileColor: Colors.grey,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: Center(child: Text("Submit")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  

  
}
