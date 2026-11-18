import 'package:material_ui/material_ui.dart';

import '../widgets/left_drawer.dart';
import '../widgets/project_card.dart';
import 'project_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'name': 'Projects',
        'icon': Icons.work_outline,
        'color': Colors.indigo,
      },
      {
        'name': 'Experiences',
        'icon': Icons.badge_outlined,
        'color': Colors.teal,
      },
      {
        'name': 'Certifications',
        'icon': Icons.workspace_premium_outlined,
        'color': Colors.deepOrange,
      },
      {
        'name': 'Tambah Proyek',
        'icon': Icons.add_circle_outline,
        'color': Colors.purple,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyPortfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to my portfolio!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Explore my projects and experiences.'),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: items.map((item) {
                  final name = item['name'] as String;

                  return ProjectCard(
                    name: name,
                    icon: item['icon'] as IconData,
                    color: item['color'] as Color,
                    onTap: () {
                      ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text('Kamu telah menekan tombol $name!'),
                          ),
                        );

                      if (name == 'Tambah Proyek') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProjectFormPage(),
                          ),
                        );
                      }
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
