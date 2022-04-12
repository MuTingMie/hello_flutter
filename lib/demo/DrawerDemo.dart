import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(color: Colors.grey[100]),
          // ),
          UserAccountsDrawerHeader(
            accountName: const Text('hby', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: const Text('hby@hby.com'),
            currentAccountPicture: const CircleAvatar(
              // foregroundImage backgroundImage
              backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/MuTingMie/material/img/202203271547943.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: const NetworkImage('https://cdn.jsdelivr.net/gh/MuTingMie/material/img/202203271547943.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(const Color.fromARGB(255, 120, 218, 225).withOpacity(0.8), BlendMode.overlay),
                )),
          ),
          ListTile(
            title: const Text('Messages', textAlign: TextAlign.right),
            // leading 行首  trailing 行尾
            trailing: const Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Favorite', textAlign: TextAlign.right),
            trailing: const Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Settings', textAlign: TextAlign.justify),
            trailing: const Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}

class EndDrawerDemo extends StatelessWidget {
  const EndDrawerDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: const [Text('自定义 drawer')]
      ),
    );
  }
}