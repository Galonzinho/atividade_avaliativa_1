import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: PrimeiraPagina()
  ));
}

class PrimeiraPagina extends StatelessWidget {
  const PrimeiraPagina({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assistente de Pizzaria", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
              child: Image.asset("imagens/pizza.png",),
            ),
            Text("Bem vindo ao App de pedidos", style: TextStyle(color: Colors.indigoAccent, fontSize: 22, fontWeight: FontWeight.bold),),
            Text("da Pizzaria Canoense", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("imagens/pizzaicon1.png"),
                Image.asset("imagens/pizzaicon2.png"),
                Image.asset("imagens/pizzaicon3.png"),
              ],
            ),
            ),
            ElevatedButton(
              child: Text("Acessar área de Atendimento"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaPagina()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Área de Atendimento"),
      ),
      body: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                title: Text("Mapa"),
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text("Imagens da Pizzaria"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Telefone"),
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text("Acessibilidade"),
              ),
              ListTile(
                leading: Icon(Icons.pin_drop),
                title: Text("Localização"),
              ),
              Image.asset("imagens/pizzapropaganda.jpg"),
              Padding(padding: EdgeInsets.all(30),
                child: ElevatedButton(
                  child: Text("Voltar a primeira página"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PrimeiraPagina()),
                    );
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(30),
                child: ElevatedButton(
                  child: Text("Ir para a Galeria"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiraPagina()),
                    );
                  },
                ),
              )
            ],
          )
    );
  }
}

class TerceiraPagina extends StatelessWidget {
  const TerceiraPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria"),
      ),
      body: Column(
        children: [
          Image.asset("imagens/pizza1.jpeg"),
          Divider(),
          Image.asset("imagens/pizza2.jpg"),
          Divider(),
          Image.asset("imagens/pizza3.png"),
          Padding(padding: EdgeInsets.only(top: 90),
            child: ElevatedButton(
              child: Text("Voltar a tela anterior"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaPagina()),
                );
              },
            ),
          )
        ],
      )
    );
  }
}
