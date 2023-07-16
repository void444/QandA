import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

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
              onTap: _changeProfilePicture,
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

Future<void> _changeProfilePicture() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? pickedImage =
      await _picker.pickImage(source: ImageSource.gallery);

  if (pickedImage != null) {
    // Handle the picked image and update the profile picture
    // You can store the image file or upload it to a server
  }
}
