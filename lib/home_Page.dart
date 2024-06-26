import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF204353),
        foregroundColor: Colors.white,
        title: const Text(
          'Art_Fit',
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/foto2.jpg'),
              ),
              accountName: Text('nome@exemplo'),
              accountEmail: Text('email@exemplo'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image2.png'),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Clientes'),
              onTap: () {
                Navigator.pushNamed(context, '/clientes');
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pushNamed(context, '/sobre');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Ajuda'),
              onTap: () {
                Navigator.pushNamed(context, '/entrega');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sair'),
              onTap: () {
                Navigator.pushNamed(context, '/exit');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "versao 1.0 ",
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gap(20),
          Container(
            height: 43,
            width: 43,
            color: Color.fromARGB(255, 85, 209, 218),
            child: Text(
              'Segunda: Treino de peito e biceps',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Gap(20),
          Container(
            height: 43,
            width: 43,
            color: Color.fromARGB(255, 85, 209, 218),
            child: Text(
              'Terça: Treino de Pernas',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Gap(20),
          Container(
            height: 43,
            width: 43,
            color: Color.fromARGB(255, 85, 209, 218),
            child: Text(
              'Quarta: Treino de Costas e Triceps',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Gap(20),
          Container(
            height: 43,
            width: 43,
            color: Color.fromARGB(255, 85, 209, 218),
            child: Text(
              'Quinta: Treino de Gluteis e Posterior',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Gap(20),
          Container(
            height: 43,
            width: 43,
            color: Color.fromARGB(255, 85, 209, 218),
            child: Text(
              'Sexta: Treino de Peito e Costas ',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Gap(50),
          Container(
            child: Image.asset(
              'assets/topo.png.jpg',
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
