import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis/pokemon_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  // const Detail({super.key});
  var listPokemon;
  Detail({this.listPokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("Detail Pokemon"),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: NetworkImage(listPokemon.image),
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              listPokemon.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Type",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('${listPokemon.type}'),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Weakness",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('${listPokemon.weakness}'),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Previous Evolution",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('${listPokemon.prevEvolution}'),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Next Evolution",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('${listPokemon.nextEvolution}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Uri _url = Uri.parse('${listPokemon.wikiUrl}');
          launchUrl(_url);
        },
        tooltip: 'Search Wiki',
        child: const Icon(Icons.search),
      ),
    );
  }
}
