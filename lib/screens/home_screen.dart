import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Added key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const CustomAppBar(), // Use the custom app bar
      bottomNavigationBar: const CustomBottomNavigationBar(), // Use the custom bottom navigation bar
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Video Categories", 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  CategoryChip('All'),
                  CategoryChip('Music'),
                  CategoryChip('Gaming'),
                  CategoryChip('News'),
                  CategoryChip('Movies'),
                  CategoryChip('Live'),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const VideoCard(); // Removed key, not needed here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String category;
  
  const CategoryChip(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}// import 'package:flutter/material.dart';
// import '../widgets/app_bar.dart';
// import '../widgets/bottom_navigation_bar.dart';
// import '../widgets/video_card.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  CustomAppBar(), // Use the custom app bar
//       bottomNavigationBar:  CustomBottomNavigationBar(), // Use the custom bottom navigation bar
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Video Categories Title
//             const Padding(
//               padding:  EdgeInsets.all(8.0),
//               child: Text(
//                 "Video Categories", 
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             // Horizontal scrollable categories list
//           SizedBox(
//               height: 50,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: const <Widget>[
//                   CategoryChip('All'),
//                   CategoryChip('Music'),
//                   CategoryChip('Gaming'),
//                   CategoryChip('News'),
//                   CategoryChip('Movies'),
//                   CategoryChip('Live'),
//                 ],
//               ),
//             ),
//             // Video grid display
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(), // Prevent the grid from scrolling
//               itemCount: 6, // Example number of videos
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // Two items per row
//                 crossAxisSpacing: 10, // Space between grid items horizontally
//                 mainAxisSpacing: 10, // Space between grid items vertically
//               ),
//               itemBuilder: (context, index) {
//                 return VideoCard(key: ValueKey(index)); // Use the custom video card with keys
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CategoryChip extends StatelessWidget {
//   final String category;
  
//   const CategoryChip(this.category, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Chip(
//         label: Text(category),
//         backgroundColor: Colors.grey[800],
//       ),
//     );
//   }
// }
