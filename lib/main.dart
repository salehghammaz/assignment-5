import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Color.fromARGB(255, 68, 226, 63),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Text(
                "Animals",
                style: TextStyle(fontSize: 30, color: Colors.purple),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: ListTile(
                      leading: Image(
                          image: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1023958901765627904/SUr3QJWr_400x400.jpg")),
                      trailing: Icon(Icons.west),
                      title: Text(
                        "Lion",
                        style: TextStyle(fontSize: 50),
                      ),
                      subtitle: Text("Predatory"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
