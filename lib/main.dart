import 'package:assignment_restaurants/custon_button.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              // height: 403,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  transform: GradientRotation(14),
                  colors: [
                    Color.fromRGBO(255, 225, 225, 1),
                    Color.fromRGBO(255, 223, 223, 0),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Current location",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 9,
                      right: 9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(19.5)))),
                          ),
                          onPressed: () {},
                          child: const Text("All"),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(19.5),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color(
                                0xFFFF5858,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/images/pizza 1.png"),
                              const Text(
                                " Pizza",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(19.5)))),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                              "assets/images/roasted-chicken 1.png"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(19.5)))),
                          ),
                          child: Image.asset("assets/images/salad 1.png"),
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(19.5)))),
                          ),
                          onPressed: () {},
                          child: Image.asset("assets/images/burger 1.png"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 21),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 51,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xFFFFFFFF),
                            hintText: "Search Food items",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      top: 20,
                      bottom: 12,
                    ),
                    child: Text(
                      "Nearby Restaurent",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 360,
                          child: Image.asset(
                            "assets/images/Intersect.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Stack(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 370,
                              child: Card(
                                surfaceTintColor: Colors.transparent,
                                color: Color.fromARGB(255, 169, 39, 39),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(11),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 5, left: 8),
                                  child: Text(
                                    "Domino's Pizza",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.discount),
                                label: const Text("20 / Flat Off"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
