import 'package:flutter/material.dart';
import '../widgets/category_chip.dart';
import '../widgets/meditation_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;

  final List<String> categories = [
    'All',
    'Bible In a Year',
    'Dailies',
    'Minutes',
    'Novena',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Meditate',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, size: 28),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                SizedBox(
                  height: 44,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryChip(
                        label: categories[index],
                        isSelected: selectedCategory == index,
                        onTap: () {
                          setState(() {
                            selectedCategory = index;
                          });
                        },
                      );
                    },
                  ),
                ),

                const SizedBox(height: 24),

                const MeditationCard(
                  title: 'A Song of Moon',
                  author: 'Start with the basics',
                  info: '9 Sessions',
                  imageColor: Color(0xFFF5C13B),
                  imageIcon: Icons.wb_sunny,
                  isBig: true,
                ),

                const SizedBox(height: 28),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: MeditationCard(
                        title: 'The Sleep Hour',
                        author: 'Ashna Mukherjee',
                        info: '3 Sessions',
                        imageColor: const Color(0xFFE89B4C),
                        imageIcon: Icons.cloud,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: MeditationCard(
                        title: 'Easy on the Mission',
                        author: 'Peter Mach',
                        info: '5 minutes',
                        imageColor: const Color(0xFFF2D16B),
                        imageIcon: Icons.nights_stay,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: MeditationCard(
                        title: 'Relax with Me',
                        author: 'Amanda James',
                        info: '3 Sessions',
                        imageColor: const Color(0xFF2E7BE8),
                        imageIcon: Icons.brightness_5,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: MeditationCard(
                        title: 'Sun and Energy',
                        author: 'Micheal Hiu',
                        info: '5 minutes',
                        imageColor: const Color(0xFF009689),
                        imageIcon: Icons.wb_sunny_outlined,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}