import 'package:flutter/material.dart';

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
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.remove_red_eye,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                const Image(image: AssetImage("assets/images/Banner.jpg")),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 1.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/round_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Center(
              child: Text(
                "@james88",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                "Sneaker addicted. Favorite brand @afew 👟🔥",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.vaccines),
                      label: Text("Vantage"),
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: null,
                      icon: const Icon(Icons.flag_circle),
                      label: Text("New"),
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.campaign),
                      label: Text("Y2k"),
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      ),
                    ),
                    ElevatedButton(
                      child: Icon(Icons.add),
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Colors.white,
                        child: Image.asset("lib/icons/twitter.png"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Colors.white,
                        child: Image.asset("lib/icons/spotify.png"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Colors.white,
                        child: Image.asset("lib/icons/tiktok.png"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Colors.white,
                        child: Image.asset("lib/icons/pinterest.png"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        child: Icon(Icons.add),
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            minimumSize: Size(40, 40)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.upload,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "SHARE PROFIL",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
