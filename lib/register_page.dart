import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final txtNama = TextEditingController();
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();
  String gender = "Laki-laki";
  DateTime? tglLahir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Register")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            inputText("Nama", txtNama),
            inputText("Email", txtEmail),
            inputText("Password", txtPassword, isPassword: true),

            ListTile(
              title: Text("Jenis Kelamin"),
              subtitle: Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text("Laki-laki"),
                      value: "Laki-laki",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() => gender = value!);
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text("Perempuan"),
                      value: "Perempuan",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() => gender = value!);
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2005),
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) {
                    setState(() => tglLahir = picked);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tglLahir == null
                          ? "Pilih Tanggal Lahir"
                          : "${tglLahir!.day}/${tglLahir!.month}/${tglLahir!.year}",
                      style: TextStyle(
                        fontSize: 16,
                        color: tglLahir == null ? Colors.grey : Colors.black,
                      ),
                    ),
                    Icon(Icons.calendar_today, size: 20),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Nama: ${txtNama.text}");
                print("Email: ${txtEmail.text}");
                print("Password: ${txtPassword.text}");
                print("Gender: $gender");
                print("Tanggal Lahir: $tglLahir");
              },
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }

  Widget inputText(
    String label,
    TextEditingController controller, {
    bool isPassword = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
