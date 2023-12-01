import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/discution/data/models/discution_model.dart';

class DiscutionItemWidget extends StatelessWidget {
  final DiscutionModel discution;
  final int index;
  const DiscutionItemWidget({
    required this.discution,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("Olice ${Colors.primaries.length}");
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: Colors.primaries[index],
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        discution.name,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        discution.lastMessage,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: [
          Text(
            discution.datetime,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.primaries[index],
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${discution.unreadMessage}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
