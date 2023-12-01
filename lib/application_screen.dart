import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/discution/presentation/pages/discution_screen.dart';
import 'package:whatsapp_ui_clone/status/presentation/pages/status_screen.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({super.key});

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WA Business",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(
            Icons.camera_alt,
          ),
          SizedBox(width: 17),
          Icon(
            Icons.search,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.more_vert,
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: "Disc.",
            ),
            Tab(
              text: "Actus.",
            ),
            Tab(
              text: "Appels",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const DiscutionScreen(),
          const StatusScreen(),
          Center(
            child: Text(
              "Page 3",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          )
        ],
      ),
    );
  }
}
