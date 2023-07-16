import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'userprofilepage.dart';
import 'profilepage.dart';
import 'questionDetails.dart';
// import 'answerdetailspage.dart';

void main() => runApp(QAPlatformApp());

class QAPlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Q&A Platform',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigationScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
            'assets/logo.png'), // Replace with your logo image asset
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
            ),
          ),
        ),
        actions: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/profile.png'), // Replace with your profile icon image asset
              ),
            ),
          ),
        ],
      ),
      body: QuestionList(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddQuestionPage()),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Ask a Question'),
      ),
    );
  }
}

class QuestionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            leading: Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userProfilePage()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => userProfilePage()),
                    );
                  },
                  child: Text(
                    'Basant Adhikari',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'What is cellular reuse? What are the methods to improve frequency reuse?',
                  style: TextStyle(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('User Category', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 8),
                    Text('Question Category', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle upvote action
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_upward, size: 16),
                          SizedBox(width: 4),
                          Text('10', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle report action
                      },
                      child: Icon(Icons.flag, color: Colors.red, size: 16),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(
              'Time and Date',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionDetailsPage()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            leading: Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userProfilePage()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => userProfilePage()),
                    );
                  },
                  child: Text(
                    'Basant Adhikari',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'what is Data warehousing? What are the method of multidimensional data representation?',
                  style: TextStyle(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('User Category', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 8),
                    Text('Question Category', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle upvote action
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_upward, size: 16),
                          SizedBox(width: 4),
                          Text('10', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle report action
                      },
                      child: Icon(Icons.flag, color: Colors.red, size: 16),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(
              'Time and Date',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionDetailsPage()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            leading: Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userProfilePage()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => userProfilePage()),
                    );
                  },
                  child: Text(
                    'Basant Adhikari',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'What is the fundamental difference between OLAP and OLTP?',
                  style: TextStyle(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('User Category', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 8),
                    Text('Question Category', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle upvote action
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_upward, size: 16),
                          SizedBox(width: 4),
                          Text('10', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle report action
                      },
                      child: Icon(Icons.flag, color: Colors.red, size: 16),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(
              'Time and Date',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionDetailsPage()),
              );
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            leading: Container(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => userProfilePage()),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => userProfilePage()),
                    );
                  },
                  child: Text(
                    'Basant adhikari',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'What is computer graphics?write down the applications of computer graphics?',
                  style: TextStyle(fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('User Category', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 8),
                    Text('Question Category', style: TextStyle(fontSize: 12)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle upvote action
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_upward, size: 16),
                          SizedBox(width: 4),
                          Text('10', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle report action
                      },
                      child: Icon(Icons.flag, color: Colors.red, size: 16),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Text(
              'Time and Date',
              style: TextStyle(fontSize: 12),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionDetailsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class AddQuestionPage extends StatefulWidget {
  @override
  _AddQuestionPageState createState() => _AddQuestionPageState();
}

class _AddQuestionPageState extends State<AddQuestionPage> {
  String category = '';
  String description = '';
  File? imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);
    setState(() {
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
      }
    });
  }

  void _submitQuestion() {
    // Handle the submission of the question here
    // You can access the entered values using the 'category', 'description', and 'imageFile' variables
    // Add the question to your storage or perform any necessary operations
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Question'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Category',
              ),
              onChanged: (value) {
                setState(() {
                  category = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: const Text('Select Image'),
            ),
            const SizedBox(height: 16.0),
            if (imageFile != null) Image.file(imageFile!),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitQuestion,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        ListTile(
          title: Text('Category 2'),
          subtitle: Text('Questions: 15 | Answers: 25'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionList()),
            );
          },
        ),
        // Add more ListTile widgets for additional categories
      ],
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: Center(
        child: Text('Explore Screen'),
      ),
    );
  }
}

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryList(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Users',
          ),
        ],
      ),
    );
  }
}
