import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/ui_controller/profile/profile.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ProfileController profileController =Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Show a modal bottom sheet to edit profile
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: nameController..text = profileController.fastname.value,
                          decoration: const InputDecoration(labelText: 'Enter your name'),
                        ),
                        TextField(
                          controller: phoneController..text = profileController.phone.value,
                          decoration: const InputDecoration(labelText: 'Enter your phone'),
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (nameController.text.isNotEmpty) {
                              profileController.updateName(nameController.text);
                            }
                            if (phoneController.text.isNotEmpty) {
                              profileController.updatePhone(phoneController.text);
                            }
                            nameController.clear();
                            phoneController.clear();
                            Get.back(); // Close the bottom sheet
                          },
                          child: const Text('Save Changes'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text('Name: ${profileController.fastname.value}', style: const TextStyle(fontSize: 24))),
            const SizedBox(height: 10),
            Obx(() => Text('Phone: ${profileController.phone.value}', style: const TextStyle(fontSize: 24))),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Optionally, you can add more actions here
                },
                child: const Text('Additional Actions'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
