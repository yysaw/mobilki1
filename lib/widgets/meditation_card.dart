import 'package:flutter/material.dart';

class MeditationCard extends StatelessWidget {
  final String title;
  final String author;
  final String info;
  final Color imageColor;
  final IconData imageIcon;
  final bool isBig;

  const MeditationCard({
    super.key,
    required this.title,
    required this.author,
    required this.info,
    required this.imageColor,
    required this.imageIcon,
    this.isBig = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: isBig ? 180 : 110,
          width: double.infinity,
          decoration: BoxDecoration(
            color: imageColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
              imageIcon,
              color: Colors.white,
              size: isBig ? 90 : 55,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            fontSize: isBig ? 20 : 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          author,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.favorite_border, size: 16, color: Colors.grey),
            const SizedBox(width: 4),
            Text(
              info,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const Spacer(),
            const Text(
              'Start',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF009689),
                fontWeight: FontWeight.w600,
              ),
            ),
            const Icon(Icons.chevron_right, size: 16, color: Color(0xFF009689)),
          ],
        ),
      ],
    );
  }
}