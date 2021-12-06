import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {


  bool _comidaBr = false;
  bool _comidaMx = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Checkbox"),
      ) ,
      body: Container(
        child: Column(
          children: [

            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                // activeColor: Colors.red,
                // selected: true,
                secondary: Icon(Icons.add_box),
                value: _comidaBr,
                onChanged: (valor){
                  setState(() {
                    _comidaBr = valor!;
                  });
                }
            ),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A melhor comida do mundo"),
                // activeColor: Colors.red,
                // selected: true,
                secondary: Icon(Icons.add_box),
                value: _comidaMx,
                onChanged: (valor){
                  setState(() {
                    _comidaMx = valor!;
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
                  print("Comida Brasileira: " + _comidaBr.toString() +
                  " Comida Mexicana: " + _comidaMx.toString());
                }
            )



            // Text("Comida Brasileira"),
            // Checkbox(
            //   value: _estaSelecionado,
            //   onChanged: (valor){
            //     setState(() {
            //       _estaSelecionado = valor!;
            //     });
            //   },
            // ),

          ],
        ),
      ),
    );
  }
}
