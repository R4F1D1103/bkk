import 'package:flutter/material.dart';

class InsideJobScreen extends StatelessWidget {
  const InsideJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BKK SMN 19 JAKARTA'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(
                child: Text('Company Logo Placeholder'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'UI/UX DESIGNER',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text('PT. UTY YOGYAKARTA'),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(Icons.location_on, size: 16),
                      SizedBox(width: 4),
                      Text('JAKARTA'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.work, size: 16),
                      SizedBox(width: 4),
                      Text('Desain Web & Interaksi (Desain & Arsitektur)'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.access_time, size: 16),
                      SizedBox(width: 4),
                      Text('KONTRAK'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.attach_money, size: 16),
                      SizedBox(width: 4),
                      Text('Rp 2.000.000,00 per month'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('Posted 6 hari yang lalu'),
                  const SizedBox(height: 24),
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Persyaratan Teknis :\n'
                        '• Experienced in mobile & Web Design\n'
                        '• Proficient in UI/UX Software (Adobe suite, Figma, etc)\n'
                        '• Detail-oriented, resourceful and is kept abreast of the...\n'
                        '• As a UI Designer, you will be responsible to translate high-level requirements into interaction flows and artifacts and transform them into beautiful, intuitive, and functional user interfaces through design.\n'
                        '• Roles and Responsibilities\n'
                        'Collaborate with developers, and project manager to define and implement innovative solutions for the product direction, visuals, and experience.\n'
                        'Create, improve, and use wireframes, storyboards, user flows, process flows and site maps to effectively...',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            // TODO: Implement apply functionality
          },
          child: const Text('Liat Lamaran'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ),
    );
  }
}
