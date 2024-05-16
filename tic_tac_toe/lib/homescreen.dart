import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gamescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  final TextEditingController player1controller=TextEditingController();
  final TextEditingController player2controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323D5B),
      body: Form(
        key: _FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter Player Name",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.all(15),
              child: TextFormField(
                controller: player1controller,
                style: TextStyle( color: Color(0xFFFFFFFF)),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                  ),
                  focusedErrorBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF44336)),
                ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
                  errorBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color(0xFFF44336)),
                 ),
                  hintText: "Player1 Name",
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                ),
                validator: (value) {
                  if(value== null || value.isEmpty){
                    return "Please Enter Player1 Name";
                  }
                  return null;
                },
               ),
             ),

            Padding(padding: EdgeInsets.all(15),
              child: TextFormField(
                controller: player2controller,
                style: TextStyle( color: Color(0xFFFFFFFF)),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                  ),
                  focusedErrorBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF44336)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF44336)),
                  ),
                  hintText: "Player2 Name",
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                ),
                validator: (value) {
                  if(value== null || value.isEmpty){
                    return "Please Enter Player2 Name";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (_FormKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => GameScreen(
                      player1: player1controller.text,
                      player2: player2controller.text,
                  ),
                  )
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 17 , horizontal: 20),
                child: Text(
                  "Start The Game",
                  style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
                ),
              ),
            ),
           ],
        ),
      ),
    );
  }
}