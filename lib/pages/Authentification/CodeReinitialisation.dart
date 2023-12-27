import 'package:flutter/material.dart';

class CodeReinitialisation extends StatelessWidget {
  const CodeReinitialisation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 83,
                  child: Text(
                    'Code de réinitialisation',
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt',
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                  ),
                ),
                SizedBox(height: 31),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildContainerWithBorder(),
                    buildContainerWithBorder(),
                    buildContainerWithBorder(),
                    buildContainerWithBorder(),
                    buildContainerWithBorder(),
                  ],
                ),
                SizedBox(height: 17),
                Center(
                    child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFFD6847)),
                  ),
                  onPressed: () => {},
                  child: const Text(
                    "Envoyer",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
                SizedBox(height: 31),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('0:'),
                    Text(
                      "40",
                      style: TextStyle(color: Color(0xFFFD6847)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Vous n’avez pas reçu de message ?  "),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        "Renvoyer",
                        style: TextStyle(color: Color(0xFFFD6847)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainerWithBorder() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: 35,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF6C6C6C),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(CodeReinitialisation());
// }
