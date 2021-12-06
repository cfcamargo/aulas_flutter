import 'package:flutter/material.dart';

class SwitchEntrada extends StatefulWidget {
  const SwitchEntrada({Key? key}) : super(key: key);

  @override
  _SwitchEntradaState createState() => _SwitchEntradaState();
}

class _SwitchEntradaState extends State<SwitchEntrada> {

  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Container(
        child: Column(
          children: [

            SwitchListTile(
              title: Text("Receber Notificações"),
              value: _escolhaUsuario,
              onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
              },
            ),
            SwitchListTile(
              title: Text("Carregar imagens automaticamente"),
              value: _escolhaConfig,
              onChanged: (bool valor){
                setState(() {
                  _escolhaConfig = valor;
                });
              },
            ),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: (){
                  print("Resultado: " + _escolhaUsuario.toString());
                }
            )
          ],
        ),
      ),
    );
  }
}
