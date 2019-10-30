import 'package:flutter/material.dart';

class Draww extends StatefulWidget {
  @override
  _DrawwState createState() => _DrawwState();
}

class _DrawwState extends State<Draww> {
    @override
    Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: AppBar(
          title: Text('Aplicacion'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                  onPressed: (){},
              )
            ],
        ), 
        body: Center(
          child: Text('Drawer',
            style: TextStyle(fontSize: 45),
          ),
        ), 
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              _user('gio','gio@gmail.com',AssetImage('src/images/profile.png'),AssetImage('src/images/solo.png')),
              _barra('Inicio',Icon(Icons.home,color: Colors.pinkAccent,)),
              _barra('Vender',Icon(Icons.monetization_on,color: Colors.green,)),
              _barra('Comprar',Icon(Icons.shop,color: Colors.black12,)),
              _barra('Perfil',Icon(Icons.account_circle,color: Colors.blueAccent,)),
              Divider(),
              _barra('Configuracion',Icon(Icons.settings,color: Colors.grey,)),
              _barra('Ayuda',Icon(Icons.settings,color: Colors.grey,)),
            ],
          ),
        ),    
      );
    }
  }

  Widget _barra(String texto, Icon icono)
  {
    return ListTile(
      onTap: (){},
      title: Text(texto),
      trailing: icono,
    );
  }

  Widget _user(String email, String usuario,AssetImage perfilPrincipal,AssetImage usuarioFondo)
  {
    String networkImage='https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067_960_720.png';
    return UserAccountsDrawerHeader( 
      accountEmail: Text(email),
      accountName: Text(usuario),
      otherAccountsPictures: <Widget>[
        GestureDetector(
          onTap: (){},
          child:  CircleAvatar( 
            backgroundImage: usuarioFondo,
          ),
        )
      ],
      currentAccountPicture: GestureDetector(
        onTap: (){},
        child: CircleAvatar(
          backgroundImage: perfilPrincipal,
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: NetworkImage(networkImage),
        ),
      ),
    );
  }
