import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Archivees",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 20),
              for (var i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: StatusView(
                    radius: 40,
                    spacing: 15,
                    strokeWidth: 2,
                    indexOfSeenStatus: 1,
                    numberOfStatus: 2,
                    padding: 4,
                    centerImageUrl: "https://picsum.photos/200/300",
                    seenColor: Colors.grey,
                    unSeenColor: Colors.red,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
