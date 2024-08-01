import 'package:flutter/material.dart';
import 'package:my_cv_app/controllers/my_page_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = Provider.of<MyPageController>(context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sim_card_download_rounded),
            ),
          ),
        ],
      ),
      body: pageController.pages[pageController.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(height: 0),
        selectedLabelStyle: const TextStyle(height: 1),
        currentIndex: pageController.currentIndex,
        onTap: (index) {
          pageController.setPageIndex(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.flag_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.language), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: ''),
        ],
      ),
    );
  }
}
