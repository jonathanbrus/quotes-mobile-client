import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int index;
  final PageController pageController;
  const BottomNav({
    required this.index,
    required this.pageController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.88),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 12,
            selectedFontSize: 14,
            currentIndex: index,
            onTap: (int i) {
              pageController.animateToPage(
                i,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOutCirc,
              );
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_rounded),
              ),
              BottomNavigationBarItem(
                label: "Categories",
                icon: Icon(Icons.category_rounded),
              ),
              BottomNavigationBarItem(
                label: "Liked",
                icon: Icon(Icons.favorite_rounded),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
