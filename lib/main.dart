import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
} // class NavigationDrawerScreen

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
          appBar: AppBar(title: IconTitleWidget()),
          drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                    child: Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                            child: Image.network('https://www.chery.ru/360/exterior/tiggo4/images/blue/13.jpg'),
                          ),
                          const Text('Китайский кросс-овер'),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.one_k),
                    title: const Text('Каталог'),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Переход в каталог'))
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.two_k),
                    title: const Text('Комплектации'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text('Профиль'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Настройки'),
                    onTap: () {},
                  ),
                ],
              )
          ),
          body: Center(child: Text('Содержимое экрана'))
      ),
    );
  } // build
} // class _NavigationDrawerScreenState

class IconTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    imageCache?.clear();
    return Row (
      mainAxisAlignment: MainAxisAlignment.center, // Centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // Centers vertically
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.train),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.place),
          onPressed: () {},
        ),
        /*SizedBox (
          width: 3,
        ),*/
        TextButton(
          child: Text(
            "Place",
            style: TextStyle(color: Colors.white.withOpacity(1.0))
          ),
            onPressed: () {},
          ),
      ],
    );
  }
}

void main() {
  runApp(const NavigationDrawerScreen());
}
