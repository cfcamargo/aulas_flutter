import 'package:flutter/material.dart';


class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [

              Slider(
                value: valor,
                min: 0,
                max: 10,
                label: label,
                divisions: 5,/* altera de quanto em quanto o valor é selecionado , no caso pega o maior e divide por ele*/
                activeColor: Colors.red,
                inactiveColor: Colors.black26,
                onChanged: (double novoValor){
                  print("Valor selecionado: " + novoValor.toString());
                  setState(() {

                      valor = novoValor;
                      label = novoValor.toString();
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
                  print("Resultado:" + valor.toString());
                }
            )
          ],
        ),
      ),
    );
  }
}
