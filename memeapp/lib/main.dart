import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF515FFF)),
      ),
      home: const MyHomePage(title: 'Meme sound app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(Icons.settings_accessibility,
//             color: Color.fromARGB(255, 12, 255, 235)),
//              backgroundColor: const Color(0xFF515FFF),
//         title: Center(child: Text(widget.title)),
//         actions: <Widget>[
//           IconButton(
//             color: const Color.fromARGB(255, 0, 0, 0),
//             icon: const Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('This is a feature still in development'),
//                   duration: Duration(seconds: 2),
//                 ),
//               );
//             },
//           ),
          
//           IconButton(
//             color: const Color.fromARGB(255, 0, 0, 0),
//             icon: const Icon(Icons.add),
//             tooltip: 'Add new meme',
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('This is a feature still in development'),
//                   duration: Duration(seconds: 2),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//         body: Column(
//         children: [
//           Container(
//             height: 350,
//             width: 350,
//             margin:EdgeInsets.all(20),
//              decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 161, 13, 13),
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
                
//               ),
//            child:   Ink.image(
//             image: const AssetImage('assets/images/cross.png'),
//             height: 200,
//             width: 200,
//             fit: BoxFit.cover,
//             child: InkWell(
//               onTap: () {
//                 // _audioplayer.play('assets/sounds/haiyaa.mp3');
//                 AudioPlayer _audioplayer = AudioPlayer(playerId: 'haiyaa');
//                 _audioplayer.setSource(AssetSource('assets/sounds/haiyaa.mp3'));  
//               },
              
//               child:Ink(
//               // onTap: (){},
//               child: const Center(
//                 child: Text(
//                   '"haiyaa"',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
              
//             ),),
//            )),),
//             Container(
//             height: 350,
//             width: 350,
//             margin:EdgeInsets.all(20),
//              decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 13, 161, 13),
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
                
//               ),
//            child:   Ink.image(
//             image: const AssetImage('assets/images/cross.png'),
//             height: 200,
//             width: 200,
//             fit: BoxFit.cover,
//             child: InkWell(
//                onTap: () async {
//               debugPrint("Button Tapped - Playing alert sound...");
//               try {
//                 // 3. This line PLAYS the sound immediately. No controls needed.
//                 await _audioPlayer.play(AssetSource('sounds/fuiyoo.mp3')); // Ensure path is correct!
//                 debugPrint("Sound playback initiated.");
//               } catch (e) {
//                 debugPrint("Error playing sound: $e");
//               }
//             },
              
//               child:Ink(
//               // onTap: (){},
//               child: const Center(
//                 child: Text(
//                   '"Fuiyooh"',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
              
//             ),),
//            )),),
//         ]
//       )
//     ); 
//   }
// }

class _MyHomePageState extends State<MyHomePage> {
  // --- FIX 1: Create AudioPlayer instances here, ONCE ---
  final AudioPlayer _haiyaaPlayer = AudioPlayer();
  final AudioPlayer _fuiyooPlayer = AudioPlayer();

  // --- FIX 2: Add the dispose method to clean up players ---
  @override
  void dispose() {
    _haiyaaPlayer.dispose();
    _fuiyooPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // (Your AppBar code remains the same - no changes needed here)
         leading: const Icon(Icons.settings_accessibility,
             color: Color.fromARGB(255, 12, 255, 235)),
             backgroundColor: const Color(0xFF515FFF),
        title: Center(child: Text(widget.title)),
        actions: <Widget>[
          IconButton(
            color: const Color.fromARGB(255, 0, 0, 0),
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a feature still in development'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
          IconButton(
            color: const Color.fromARGB(255, 0, 0, 0),
            icon: const Icon(Icons.add),
            tooltip: 'Add new meme',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a feature still in development'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
      // --- Using ListView in case you add more buttons later ---
      body: ListView( // Changed Column to ListView for scrolling if needed
        children: [
          // --- Button 1: Haiyaa (Red) ---
          Container(
            height: 350,
            width: 350,
            margin: EdgeInsets.all(20),
            // Use ClipRRect for rounded corners on InkWell splash
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Material( // Material needed for InkWell splash
                 color: const Color.fromARGB(255, 161, 13, 13), // Background color
                 child: InkWell( // InkWell handles the tap
                   // --- FIX 3: Correct onTap for Haiyaa button ---
                   onTap: () async {
                     debugPrint("Haiyaa Button Tapped!");
                     try {
                       // Use the _haiyaaPlayer instance
                       // Use correct path in AssetSource (NO leading 'assets/')
                       await _haiyaaPlayer.play(AssetSource('sounds/haiyaa.mp3'));
                       debugPrint("Haiyaa playback initiated.");
                     } catch (e) {
                       debugPrint("Error playing haiyaa sound: $e");
                     }
                   },
                   // Use Stack to layer image and text
                   child: Stack(
                     alignment: Alignment.center, // Center stack children
                     children: [
                       // Background Image (using Image.asset)
                       Positioned.fill( // Make image fill the area
                         child: Image.asset(
                           'assets/images/cross.png',
                            width: 100,
                            height: 100,
                          //  fit: BoxFit.contain, // Or BoxFit.cover, adjust as needed
                         ),
                       ),
                       // Foreground Text
                       const Text(
                         '"haiyaa"',
                         style: TextStyle(
                           color: Color.fromARGB(255, 255, 255, 255), // White text might be better on image
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                            // Add shadow for visibility if needed
                           shadows: [Shadow(blurRadius: 2.0, color: Colors.black)],
                         ),
                       ),
                     ],
                   ),
                 ),
              ),
            ),
          ),

          // --- Button 2: Fuiyooh (Green) ---
           Container(
            height: 350,
            width: 350,
            margin: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
               child: Material(
                 color: const Color.fromARGB(255, 13, 161, 13), // Background color
                 child: InkWell(
                   // --- FIX 4: Correct onTap for Fuiyooh button ---
                   onTap: () async {
                     debugPrint("Fuiyooh Button Tapped!");
                     try {
                       // Use the _fuiyooPlayer instance
                       // Path 'sounds/fuiyoo.mp3' looks correct
                       await _fuiyooPlayer.play(AssetSource('sounds/fuiyoo.mp3'));
                       debugPrint("Fuiyooh playback initiated.");
                     } catch (e) {
                       debugPrint("Error playing fuiyooh sound: $e");
                     }
                   },
                   // Use Stack to layer image and text
                   child: Stack(
                     alignment: Alignment.center,
                     children: [
                       // Background Image
                        Positioned.fill(
                         child: Image.asset(
                           'assets/images/circle.png', // Assuming same image?
                           width: 100,
                            height: 100,
                          //  fit: BoxFit.contain,
                         ),
                       ),
                       // Foreground Text
                       const Text(
                         '"Fuiyooh"',
                          style: TextStyle(
                           color: Color.fromARGB(255, 255, 255, 255), // White text
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                           shadows: [Shadow(blurRadius: 2.0, color: Colors.black)],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
            ),
          ),
        ],
      ),
    );
  }
}