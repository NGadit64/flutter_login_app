import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_flutter/controllers/contact_controller.dart';
import 'package:tes_flutter/widget/widget_button.dart';
import 'package:tes_flutter/widget/widget_textfield.dart';

class ContactPage extends StatelessWidget {
  final ContactController controller = Get.put(ContactController());

  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kontak")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            MyTextField(
              textEditingController: controller.nameController,
              labelText: "Nama",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            const SizedBox(height: 10),

            CustomButton(
              text: "Tambah",
              textColor: Colors.white,
              backgroundColor: Colors.blue,
              onPressed: controller.addName,
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Obx(() {
                if (controller.contacts.isEmpty) {
                  return const Center(
                    child: Text("Belum ada kontak"),
                  );
                }
                return ListView.builder(
                  itemCount: controller.contacts.length,
                  itemBuilder: (context, index) {
                    final contact = controller.contacts[index];
                    return Card(
                      child: ListTile(
                        title: Text(contact['name']),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            controller.deleteName(contact['id']);
                          },
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
