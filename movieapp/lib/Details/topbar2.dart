import 'package:flutter/material.dart';

class DetailsTopBar extends StatelessWidget {
  const DetailsTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color.fromARGB(150, 255, 253, 253),
          child: IconButton(
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Color.fromARGB(146, 255, 253, 253),
          child: IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
