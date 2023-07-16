import 'package:flutter/material.dart';
import 'package:flutter2/profilepage.dart';
import 'package:flutter2/userprofilepage.dart';

// import 'profilepage.dart';
import 'answerdetailspage.dart';
import 'giveanswerpage.dart';

class QuestionDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Teacher/User',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),

                GestureDetector(
                  onTap: () {
                    // Navigate to the profile page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            userProfilePage(), // Replace with your profile page
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                        radius: 20,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Basant Adhikari',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HtmlEditorExample(
                                  title: 'give your answer',
                                ), // Replace with your profile page
                              ),
                            );
                          },
                          child: Text('Respond'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),

                const SizedBox(height: 16.0),
                Text(
                  'what is LSTM?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                // Text('What is your favorite color?'),
                SizedBox(height: 8.0),
                Text(
                  'Question category:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Text('July 20, 2022'),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle question upvote action
                      },
                      icon: Icon(Icons.arrow_upward),
                    ),
                    Text('5'),
                    IconButton(
                      onPressed: () {
                        // Handle question report action
                      },
                      icon: Icon(Icons.flag),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Answers (2):',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      // Navigate to the profile page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              userProfilePage(), // Replace with your profile page
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius:
                          30, // Increase the radius to enlarge the profile icon
                    ),
                  ),
                  title: GestureDetector(
                    onTap: () {
                      // Navigate to the profile page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              userProfilePage(), // Replace with your profile page
                        ),
                      );
                    },
                    child: Text(
                      'User\'s Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust the font size of the user's name
                      ),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Question Category',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  12, // Adjust the font size of the question category
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'User Category',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  12, // Adjust the font size of the user category
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Answer text line 1',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Answer text line 2',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12, // Adjust the font size of the date
                        ),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle answer upvote action
                        },
                        icon: const Icon(Icons.arrow_upward),
                      ),
                      const Text('2'),
                      IconButton(
                        onPressed: () {
                          // Handle answer report action
                        },
                        icon: const Icon(Icons.flag),
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     // Handle answer report action
                      //   },
                      //   icon: Icon(Icons.thumb_down),
                      // ),
                      // Text('7'),
                    ],
                  ),
                  onTap: () {
                    // Navigate to the answer details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnswerDetailsPage(
                            answerText:
                                'this is the answer text'), // Replace with your answer details page
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      // Navigate to the profile page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              userProfilePage(), // Replace with your profile page
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius:
                          30, // Increase the radius to enlarge the profile icon
                    ),
                  ),
                  title: GestureDetector(
                    onTap: () {
                      // Navigate to the profile page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              userProfilePage(), // Replace with your profile page
                        ),
                      );
                    },
                    child: Text(
                      'User\'s Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust the font size of the user's name
                      ),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Question Category',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  12, // Adjust the font size of the question category
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'User Category',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  12, // Adjust the font size of the user category
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Answer text line 1',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Answer text line 2',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12, // Adjust the font size of the date
                        ),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle answer upvote action
                        },
                        icon: Icon(Icons.arrow_upward),
                      ),
                      Text('2'),
                      IconButton(
                        onPressed: () {
                          // Handle answer report action
                        },
                        icon: Icon(Icons.flag),
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     // Handle answer report action
                      //   },
                      //   icon: Icon(Icons.thumb_down),
                      // ),
                      // Text('7'),
                    ],
                  ),
                  onTap: () {
                    // Navigate to the answer details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnswerDetailsPage(
                            answerText:
                                'this is the answer text'), // Replace with your answer details page
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
