import 'package:flutter/material.dart';

class userProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/profile1.png'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Frontend Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Institute: ABC University',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Social Links:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              children: [
                const Chip(
                  label: Text('Twitter'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(color: Colors.white),
                ),
                const Chip(
                  label: Text('LinkedIn'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(color: Colors.white),
                ),
                const Chip(
                  label: Text('GitHub'),
                  backgroundColor: Colors.blue,
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Questions Asked:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5, // Replace with the actual count of questions
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Question Title'),
                  subtitle: Text('Category: XYZ'),
                  trailing: Chip(
                    label: Text('3 Answers'),
                    backgroundColor: Colors.green,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Answers Given:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5, // Replace with the actual count of answers
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Answer Text'),
                  subtitle: Text('Question: ABC'),
                  trailing: Chip(
                    label: Text('5 Upvotes'),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              // onTap: _changeProfilePicture,
              child: const CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/profile2.png'),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'John Doe',
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'Frontend Developer',
              decoration: const InputDecoration(
                labelText: 'Job Title',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'ABC University',
              decoration: const InputDecoration(
                labelText: 'Institute',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'Twitter',
              decoration: const InputDecoration(
                labelText: 'Social Link 1',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'LinkedIn',
              decoration: const InputDecoration(
                labelText: 'Social Link 2',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              initialValue: 'GitHub',
              decoration: const InputDecoration(
                labelText: 'Social Link 3',
              ),
            ),
            const SizedBox(height: 16.0),
            // RaisedButton(
            //   onPressed: () {
            //     // Handle save button action
            //   },
            //   child: Text('Save'),
            // ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
