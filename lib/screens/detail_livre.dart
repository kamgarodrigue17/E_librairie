import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class detail_livre extends StatefulWidget {
  const detail_livre({super.key});

  @override
  State<detail_livre> createState() => _detail_livreState();
}

class _detail_livreState extends State<detail_livre> {
  @override
  Widget build(BuildContext context) {
    String messageText = '';
    final List<Comment> comments = [
      Comment('John Doe', 'Great post!',
          DateTime.now().subtract(Duration(minutes: 30))),
      Comment('Jane Smith', 'Thanks for sharing.',
          DateTime.now().subtract(Duration(minutes: 20))),
      Comment('Bob Johnson', 'I have a question.',
          DateTime.now().subtract(Duration(minutes: 10))),
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xff353434),
                leading: IconButton(
                    icon: Icon(
                      Icons.chevron_left_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
            body: ListView(
              children: [
                Container(
                  color: Color(0xff353434),
                  child: Column(
                    children: [
                      Container(
                        width: 131,
                        height: 179,
                        child: Image.asset(
                          'assets/images/livre2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Nouvelle Route Nsimeyong",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mercredi, 2 Feb 2022",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "14h30",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                          height: 405,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                //        blurRadius: 5.0,
                                //      offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 46, top: 54, right: 34),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Nom de l'objet",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                            // textAlign: Align.,
                                          ),
                                          SizedBox(
                                            height: 35,
                                          ),
                                          Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                                          Text('data'),
                                          MessageWidget(
                                            userPhotoAsset:
                                                'assets/images/livre2.png',
                                            messageContent:
                                                'Contenu du message...',
                                            messageTime: '12:30 PM',
                                          ),
                                          SizedBox(
                                            height: 200,
                                          )
                                        ],
                                      )),
                                ]),
                          )),
                    ],
                  ),
                ),
                Container(
                    //  color: Colors.blue, // Couleur de la plage
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Couleur de la bordure
                        width: 2, // Largeur de la bordure
                      ),
                      borderRadius:
                          BorderRadius.circular(10), // Rayon de bordure
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (text) {
                                // Ajoutez la logique nécessaire ici
                              },
                              decoration: InputDecoration(
                                hintText: 'Tapez votre message...',
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              // Ajoutez la logique nécessaire ici
                            },
                          ),
                        ],
                      ),
                    )),
              ],
            )));
  }
}

class DescriptionTextField extends StatefulWidget {
  @override
  _DescriptionTextFieldState createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _descriptionController,
        maxLines:
            5, // Définit le nombre de lignes que le TextField doit afficher.
        decoration: InputDecoration(
          labelText: 'Description',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class Comment {
  final String author;
  final String text;
  final DateTime timestamp;

  Comment(this.author, this.text, this.timestamp);
}

class CommentWidget extends StatelessWidget {
  final Comment comment;

  CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat.Hm().format(comment.timestamp);

    return ListTile(
      title: Text(comment.author),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(comment.text),
          Text(
            'Posted at $formattedTime',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String userPhotoAsset;
  final String messageContent;
  final String messageTime;

  MessageWidget({
    required this.userPhotoAsset,
    required this.messageContent,
    required this.messageTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              userPhotoAsset,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageContent,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  messageTime,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
