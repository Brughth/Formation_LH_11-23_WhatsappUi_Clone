import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/discution/data/models/discution_model.dart';
import 'package:whatsapp_ui_clone/discution/data/repositories/discurtion_repository.dart';
import 'package:whatsapp_ui_clone/discution/presentation/widgets/discution_item_widget.dart';

class DiscutionScreen extends StatefulWidget {
  const DiscutionScreen({super.key});

  @override
  State<DiscutionScreen> createState() => _DiscutionScreenState();
}

class _DiscutionScreenState extends State<DiscutionScreen> {
  late DiscutionRepository _discutionRepository;
  late List<DiscutionModel> discutions;

  @override
  void initState() {
    _discutionRepository = DiscutionRepository();
    discutions = _discutionRepository.loadDiscution();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const Icon(
                Icons.archive,
                color: Colors.grey,
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  "Archivees",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Text(
                "8",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          for (var i = 0; i < discutions.length; i++)
            DiscutionItemWidget(
              discution: discutions[i],
              index: i,
            )
        ],
      ),
    );
  }
}
