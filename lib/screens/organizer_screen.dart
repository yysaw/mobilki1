import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, size: 24),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Organizer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.more_vert, size: 20),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFFE0E0E0),
                  child: Icon(Icons.person, size: 70, color: Colors.white),
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'Важный Тип',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _statColumn('1КК', 'Followers'),
                  Container(
                    width: 1,
                    height: 40,
                    color: const Color(0xFFE0E0E0),
                  ),
                  _statColumn('0', 'Following'),
                  Container(
                    width: 1,
                    height: 40,
                    color: const Color(0xFFE0E0E0),
                  ),
                  _statColumn('999', 'Events'),
                ],
              ),

              const SizedBox(height: 28),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 52,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.person_add_alt_1,
                            size: 20, color: Colors.white),
                        label: const Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3D3DF5),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 52,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.chat_bubble_outline,
                            size: 20, color: Color(0xFF3D3DF5)),
                        label: const Text(
                          'Messages',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF3D3DF5),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xFF3D3DF5),
                            width: 1.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              Row(
                children: [
                  _tab('About', isSelected: true),
                  const SizedBox(width: 10),
                  _tab('Events', isSelected: false),
                  const SizedBox(width: 10),
                  _tab('Reviews', isSelected: false),
                ],
              ),

              const SizedBox(height: 24),

              const Text(
                'About',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit и тд и тп.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 12),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Read more...',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF3D3DF5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statColumn(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _tab(String label, {required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF3D3DF5) : Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF3D3DF5),
          width: 1.5,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.white : const Color(0xFF3D3DF5),
        ),
      ),
    );
  }
}