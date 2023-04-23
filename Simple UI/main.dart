import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> _pokemonList = [];

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(
        'https://pokeapi.co/api/v2/pokemon?limit=151')); // fetch data for first 151 pokemon
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _pokemonList = data['results'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        itemCount: _pokemonList.length,
        itemBuilder: (context, index) {
          final pokemon = _pokemonList[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  pokemonUrl: pokemon['url'],
                ),
              ),
            ),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    pokemon['name'],
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String pokemonUrl;

  DetailPage({required this.pokemonUrl});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Map<String, dynamic> _pokemonData = {};

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(widget.pokemonUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _pokemonData = data;
      });
    }
  }
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pokemonData['name'] ?? 'Loading...'),
      ),
      body: _pokemonData.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    _pokemonData['sprites']['front_default'],
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Type:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                 
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pokemonData['types']
                    .map<Widget>((type) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Chip(
                            label: Text(
                              type['type']['name'].toUpperCase(),
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.red,
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Abilities:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: _pokemonData['abilities']
                    .map<Widget>((ability) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            ability['ability']['name'].toUpperCase(),
                            style: TextStyle(fontSize: 16),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        )
      : Center(
          child: CircularProgressIndicator(),
        ),
);
}
}