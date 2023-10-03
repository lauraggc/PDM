import 'package:flutter/material.dart';
import 'package:provider_class/Screens/multiplica.dart';
import 'package:provider_class/Screens/primo.dart';
import 'package:provider_class/Screens/suma_resta.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const SumaResta(),
    const Multiplica(),
    const Primo()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador 2.0'),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.one_k), label: 'Suma'),
          BottomNavigationBarItem(icon: Icon(Icons.two_k), label: 'Multiplica'),
          BottomNavigationBarItem(icon: Icon(Icons.three_k), label: 'Primo'),
        ],
      ),
      );
    
  }
}