import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key}); // Added key parameter

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'Upload',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions),
          label: 'Subscriptions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'You',
        ),
      ],
    );
  }
}// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Colors.black,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.grey,
//       items: [
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.play_arrow),
//           label: 'Shorts',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.add_circle_outline),
//           label: 'Upload',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.subscriptions),
//           label: 'Subscriptions',
//         ),
//         const BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'You',
//         ),
//       ],
//     );
//   }
// }
