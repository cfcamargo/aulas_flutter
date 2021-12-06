import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [

            RadioListTile(
              title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                      _escolhaUsuario = escolha.toString();
                   });
                }
            ),
            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (escolha){
                  setState(() {
                    _escolhaUsuario = escolha.toString();
                  });
                }
            ),

            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: (){
                  print("Resultado: " + _escolhaUsuario);
                }
            )

            // Text("Masculino"),
            // Radio(
            //     value: "m",
            //     groupValue: _escolhaUsuario,
            //     onChanged: (escolha){
            //       setState(() {
            //         _escolhaUsuario = escolha.toString();
            //       });
            //     }
            // ),
            // Text("Feminino"),
            // Radio(
            //     value: "f",
            //     groupValue: _escolhaUsuario,
            //     onChanged: (escolha) {
            //       setState(() {
            //         _escolhaUsuario = escolha.toString();
            //       });
            //     }),
          ],
        ),
      ),
    );
  }
}
