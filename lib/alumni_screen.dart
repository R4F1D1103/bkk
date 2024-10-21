import 'package:flutter/material.dart';

class AlumniScreen extends StatelessWidget {
  const AlumniScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BKK SMN 19 JAKARTA'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // TODO: Implement menu functionality
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Diri',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTextField('Nama'),
            _buildTextField('No NIK'),
            _buildTextField('No TELP'),
            _buildTextField('EMAIL'),
            const SizedBox(height: 16),
            const Text(
              'KOMPETENSI',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildChipRow(['AKL 1', 'AKL 2', 'OTKP 1', 'OTKP 2']),
            _buildChipRow(['MM 1', 'MM 2', 'BDP']),
            const SizedBox(height: 16),
            const Text(
              'SASARAN',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildChipRow(['Belum BEKERJA', 'KULIAH', 'WIRAUSAHA']),
            _buildChipRow(['Bekerja']),
            const SizedBox(height: 16),
            _buildTextField('TEMPAT SASARAN'),
            const SizedBox(height: 16),
            const Text(
              'TAHUN LULUS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildChipRow(['2024', '2025', '2026']),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement submit functionality
                },
                child: const Text('KIRIM'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  primary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Halaman Alumni, indeks 1
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/job'); // JobScreen
          } else if (index == 1) {
            Navigator.pushNamed(context, '/alumni'); // AlumniScreen
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile'); // ProfileScreen
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Job'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Alumni'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildChipRow(List<String> labels) {
    return Wrap(
      spacing: 8,
      children: labels.map((label) => Chip(
        label: Text(label),
        backgroundColor: Colors.grey[200],
      )).toList(),
    );
  }
}
