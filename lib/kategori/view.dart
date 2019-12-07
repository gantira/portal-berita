import 'package:flutter/material.dart';
import './controller.dart';
import './detail/view.dart';

class KategoriView extends StatefulWidget {
  @override
  _KategoriViewState createState() => _KategoriViewState();
}

class _KategoriViewState extends KategoriController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Kategori'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          ListKategori(
            icon: Icons.restaurant,
            iconColor: Colors.red,
            label: 'https://www.liputan6.com/',
          ),
          ListKategori(
            icon: Icons.new_releases,
            iconColor: Colors.blue,
            label: 'https://www.bola.com/',
          ),
          ListKategori(
            icon: Icons.local_hospital,
            iconColor: Colors.orange,
            label: 'https://www.detik.com/',
          ),
          ListKategori(
            icon: Icons.web,
            iconColor: Colors.purple,
            label: 'https://ka.unikom.ac.id/',
          ),
        ],
      ),
    );
  }
}

class ListKategori extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  ListKategori({this.icon, this.iconColor, this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext _) => WebViewInFlutter(
                namaMakanan: label,
              ))),
      leading: CircleAvatar(
        backgroundColor: iconColor.withOpacity(.2),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(label),
    );
  }
}

