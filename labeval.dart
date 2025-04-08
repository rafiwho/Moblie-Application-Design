import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'icon': 'folder',
      'title': 'notebooks',
      'date': 'Modified Nov 4, 2023'
    },
    {
      'icon': 'folder',
      'title': 'dev',
      'date': 'Modified Dec 25, 2024'
    },
    {
      'icon': 'folder',
      'title': 'tba',
      'date': 'Modified Feb 23, 2024'
    },
    {
      'icon': 'slideshow',
      'title': 'git.pptx',
      'date': 'Modified Mar 24'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drive Files'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('menu', style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () {},
            )
          ],
        ),
        
      ),
    
      body: ListView(
        children: items.map((item) {
          return ListTile(
            leading: Icon(
              item['icon'] == 'slideshow' ? Icons.slideshow : Icons.folder,
              color: item['icon'] == 'slideshow' ? Colors.orange : Colors.blue,
            ),
            title: Text(item['title'] ?? ''),
            subtitle: Text(item['date'] ?? ''),
          );
        }).toList(),
      ),
    );
  }
}
