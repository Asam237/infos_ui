import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infos_app/views/screens/infos.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Infos App',
        home: const HomeApp());
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff0d2233),
              elevation: 0.0,
              toolbarHeight: 180,
              bottom: PreferredSize(
                preferredSize: new Size(20.0, 80.0),
                child: Container(
                  width: 320,
                  child: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Details',
                      ),
                      Tab(
                        text: 'Historique',
                      ),
                    ],
                  ),
                ),
              ),
              title: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/imgs/avatar.png'),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.orange
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            size: 25,
                          ),
                        ),
                      ))
                ],
              ),
              centerTitle: true,
            ),
            body: TabBarView(
              children: [InfosScreen()],
            )),
      ),
    );
  }
}
