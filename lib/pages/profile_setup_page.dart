import 'package:flutter/material.dart';

class SetupProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF005400),
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFF005400), width: 2),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xFF005400),
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Choose Image', style: TextStyle(color: Color(0xFF005400))),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Color(0xFF005400)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF005400), width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Verify License', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildLicenseUpload('Front View'),
                        _buildLicenseUpload('Back View'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text('Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              _buildTextFieldWithoutBox(Icons.email, 'Email', true),
              _buildTextFieldWithoutBox(Icons.person, 'Full Name', true),
              _buildTextFieldWithoutBox(Icons.phone, 'Mobile', true),
              _buildTextFieldWithoutBox(Icons.lock, 'Previous Password', true, obscureText: true),
              _buildTextFieldWithoutBox(Icons.lock, 'New Password', true, obscureText: true),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF005400),
                    minimumSize: Size(120, 50),
                  ),
                  child: const Text('Save',style:TextStyle(color:Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLicenseUpload(String label) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: const Color(0xFFDCEDC8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.cloud_upload, color: Color(0xFF005400), size: 40),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Color(0xFF757575))),
      ],
    );
  }

  Widget _buildTextFieldWithoutBox(IconData icon, String hint, bool enabled, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        enabled: enabled,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Color(0xFF4CAF50)),
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF757575)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4CAF50)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4CAF50), width: 1),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
      ),
    );
  }
}
