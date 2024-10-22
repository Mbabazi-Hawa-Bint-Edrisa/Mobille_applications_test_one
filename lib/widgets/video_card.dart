// import 'package:flutter/material.dart';

// class VideoCard extends StatelessWidget {
//   @override
//   final Key? key; // Accept the optional Key
//   const VideoCard({this.key}) : super(key: key); // Initialize the Key in the constructor

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey[900],
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 100,
//             color: Colors.grey,
//             child: const Center(
//               child: Icon(
//                 Icons.play_circle_outline,
//                 size: 50,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const Padding(
//             padding:  EdgeInsets.all(8.0),
//             child: Text(
//               'Video Title',
//               style: TextStyle(color: Colors.white),
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key}); // Use 'super.key' directly in the constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.grey,
            child: const Center(
              child: Icon(
                Icons.play_circle_outline,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Video Title',
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
