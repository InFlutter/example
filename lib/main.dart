import 'package:dars61/widgets/sliver_header_delagate.dart';
import 'package:flutter/material.dart';


void main() => runApp(Salom());

class Salom extends StatelessWidget {
  const Salom({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}




class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('SliverAppBar Misoli',style: TextStyle(
              color: Colors.blue
            ),),
            centerTitle: true,
            expandedHeight: 200.0,
            floating: true,
            backgroundColor: Colors.deepPurple,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://suret.pics/uploads/posts/2023-09/1695303507_1-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 25,
            ),
          ),
        ],
      ),
    );
  }
}






















class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.red,
              pinned: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("salom appBar"),
                centerTitle: true,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text("List Item $index"),
                  );
                },
                childCount: 10,
              ),
            ),



            SliverPersistentHeader(
              pinned: true,
                delegate: Nasl(
              child: Container(
                  color: Colors.deepPurpleAccent, child: const Center(child: Text("salom qalisan"))),
              max: 200,
              min: 60,
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemExtent: 160,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.blue[100 * (index % 9)],
                      );
                    }),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: Text("grid soni $index"),
                    );
                  },
                  childCount: 10,
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
