import 'package:flutter/material.dart';

class DetailsBtns extends StatelessWidget {
  const DetailsBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
          ),
        
        IconButton(
            icon: const Icon(
              Icons.cloud_download_sharp,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        
      ],
    );
  }
}
