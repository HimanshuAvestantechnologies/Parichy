import 'package:flutter/material.dart';
import 'package:matrimony_app/Pages/ConversationView.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
    length: 3,
    child: Scaffold(
    appBar: AppBar(
    elevation: 5,
    title: Text("Chats "),
    ),
    body: Column(
    children: [
    Container(
    height: 45,
    decoration: BoxDecoration(
    color: Colors.grey[300],
    ),
    child: TabBar(
    indicator:
    BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
    labelColor: Colors.red,
    unselectedLabelColor: Colors.black,
    tabs: const [
    Tab(
    text: 'Accepted',
    ),
    Tab(
    text: 'New Request',
    ),
    Tab(
    text: 'Pending',
    ),
    ],
    ),
    ),
    Expanded(
    child: TabBarView(
    children: [
    _acceptedRequested(context),
    _newRequest(context),
    _pendingRequest(context),
    ],
    ),
    )
    ],
    )),
    )
    );
    }
    }

        _acceptedRequested(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemCount: 5, // Set the number of items in the list
            separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 2,
            ), // Add a divider between each item in the list
            itemBuilder: (BuildContext context, int index) {
              // final imageData = imageDataList[index]; // Get the ImageData object at the current index
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ConversationView()));
                },
                child: ListTile(
                  leading: Image.network(
                      "https://media.istockphoto.com/id/1156925412/photo/bearded-man-walking-in-an-urban-street-unique-photo.webp?b=1&s=170667a&w=0&k=20&c=ahWm40c7-glto-wpPJfvC3hsYfgS7RSynCRgtDqSXfQ="), // Display the image on the left side of the ListTile
                  title: Text(
                      "Aaditya"), // Display the name as the title of the ListTile
                  subtitle: Text(
                      "Loreaum Lipsum"), // Display the description as the subtitle of the ListTile
                ),
              );
            }),
      );
    }

    _newRequest(BuildContext context) {
      bool isVisible = true;
      List<String> imageData = [
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1503104834685-7205e8607eb9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHN8ZW58MHx8MHx8fDA%3D"
      ];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Linda Johnson'),
                  Spacer(),
                  Text('28 Years'),
                  Text("5'8 feet"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Catholic Christian'),
                      Text("New York,USA"),
                      SizedBox(height: 10,),
                      Text('UI UX Designer'),
                      Text("Computer Science"),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .5,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageData.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                imageData[index],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text('More Info'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text(
                          'Accept Request',
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    _pendingRequest(BuildContext context) {
      bool isVisible = true;
      List<String> imageData = [
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1675034393381-7e246fc40755?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1503104834685-7205e8607eb9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHN8ZW58MHx8MHx8fDA%3D"
      ];
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Linda Johnson'),
                  Spacer(),
                  Text('28 Years'),
                  Text("5'8 feet"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('Catholic Christian'),
                  Text("New York,USA"),
                  SizedBox(height: 10,),
                  Text('UI UX Designer'),
                  Text("Computer Science"),
                  ]
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * .5,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageData.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                imageData[index],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text('More Info'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.red),
                      ),
                      child: Center(
                        child: Text(
                          'Pending Request',
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
