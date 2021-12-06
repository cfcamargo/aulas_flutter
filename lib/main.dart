import 'package:flutter/material.dart';
// import 'EntradaCheckbox.dart';
// import 'EntradaRadioButton.dart';
import 'EntradaSlider.dart';
import 'SwitchEntrada.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: CampoTexto(),
        // home: EntradaCheckbox(),
        // home: EntradaRadioButton(),
        // home: SwitchEntrada(),
        home: EntradaSlider(),
      )
  );
}
