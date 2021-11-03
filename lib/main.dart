import 'package:flutter/material.dart';

void main() {
  runApp(
    MyAppLayout(),
  );
}

//Para Widget Layout Muestra Todos
class MyAppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: ListView(children: [
          WidgetsPractica(),
        ]),
      ),
    );
  }
}

//MENU
// WidgetsPractica() -- Esto Es Para Mostrar Todos Los Widgets Juntos -- Code 48
// myLayoutWidget() -- Es Un Widget Con Padding -- Code 135
// myLayoutWidget2() -- Es Un Widget Con Padding Solo De Arriba E Izquierda -- Code 143
// myLayoutWidget3() -- Es Un Widget Con Un Texto Centrado -- Code 151
// myLayoutWidget4() -- Es Un Widget Con Un Texto Con Coordenadas-- Code 161
// myLayoutWidget5() -- Es Un Widget DecoratedBox -- Code 172
// myLayoutWidget6() -- Es Un Widget Con Varios Hijos Row (Horizontal) -- Code 188
// myLayoutWidget7() -- Es Un Widget Con Varios Hijos Column (Vertical)-- Code 200
// myLayoutWidget8() -- Es Un Widget Con Varios Hijos Row (Horizontal) Separados -- Code 212
// myLayoutWidget9() -- Es Un Widget Con Peso En Los Hijos -- Code 225
// myLayoutWidget10() -- Es Un Widget Pila Con Una Imagen Y Texto -- Code 245
// myLayoutWidget11() -- Es Una Recreadcion De Una Pagina -- Code 268
// widgetPrueba1() -- Es Un Widget Con Un Texto Simple-- Code 338
// widgetPrueba3() -- Es Un Widget Con Un Boton -- Code 346
// widgetPrueba4() -- Es Un Widget Con Un Boton Sin Altura -- Code 359
// widgetPrueba5() -- Es Un Widget Con Un Campo De Texto -- Code 368
// widgetPrueba6() -- Es Un Widget Con Un Campo De Texto Con Una Linea Azul Abajo-- Code 376
// widgetPrueba7() -- Es Un Widget Con Un ListView -- Code 383
// widgetPrueba8() -- Es Un Widget Con Un Texto Centrado -- Code 396

// Widget Con Todos Los Componentes
Widget WidgetsPractica() {
  return Column(
    children: [
      myLayoutWidget10(), //Pila Con Imagen Y Texto
      myLayoutWidget11(), //Simulador De Una Pagina
      SgdaFila(), //iconos separados
      myLayoutWidget4(), //Poner El Texto Con Coordenadas
      CuartaFila(), //Texto Con Padding
      widgetPrueba5(), //Pone Un Campo De Texto Normal
      widgetPrueba6(), //Pone El Un Campo De Texto Con Lineas Azul Abajo
      QuintaFila(), //Bottones Con Y Sin Altura
      myLayoutWidget5(), //Crea Un DecoraBox
    ],
  );
}

// Widget 10 y 7 y 5
Widget SgdaFila() {
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Row(
      children: [
        Expanded(
          child: Icon(Icons.ac_unit),
        ),
        Expanded(
          child: Icon(Icons.ac_unit),
        ),
        Expanded(
          child: Icon(Icons.ac_unit),
        ),
        Expanded(
          child: Text('Prueba1'),
        ),
      ],
    ),
  );
}

// Widget 2
Widget CuartaFila() {
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.yellow,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Row(
      children: [
        myLayoutWidget2(),
      ],
    ),
  );
}

// Widget De La Primera Pagina 5
Widget QuintaFila() {
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.cyan[600],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Row(
      children: [
        Expanded(
          child: widgetPrueba3(),
        ),
        Expanded(
          child: widgetPrueba4(),
        ),
      ],
    ),
  );
}

// Crea Un Layout Con Distancia En Todos Los Lados
Widget myLayoutWidget() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text("Hola Mundo, Esto Es Un Texto"),
  );
}

// Crea Un Layout Con Distancia Arriba Y A La Izquierda
Widget myLayoutWidget2() {
  return Padding(
    padding: EdgeInsets.only(left: 20.0, top: 8.0),
    child: Text("Esto Es Un Texto Con Padding"),
  );
}

// Crea Un Layout Centrado En El Medio
Widget myLayoutWidget3() {
  return Center(
    child: Text(
      "Hello world!",
      style: TextStyle(fontSize: 30),
    ),
  );
}

// Crea Un Layout En Cualquier parte que querramos
Widget myLayoutWidget4() {
  return Align(
    alignment: Alignment(0.0, 1.1),
    child: Text(
      "Hello",
      style: TextStyle(fontSize: 30),
    ),
  );
}

// Crea Un DecoratedBox
Widget myLayoutWidget5() {
  return Container(
    margin: EdgeInsets.all(50.0),
    padding: EdgeInsets.all(0.0),
    alignment: Alignment.topCenter,
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red[200],
      border: Border.all(),
    ),
    child: Text("Hello", style: TextStyle(fontSize: 30)),
  );
}

// Crea Un Widget Con Varios Hijos Row (Sera De Forma Horizontal)
Widget myLayoutWidget6() {
  return Row(
    children: [
      Icon(Icons.home),
      Icon(Icons.add_alert_sharp),
      Icon(Icons.account_tree),
      Icon(Icons.air_rounded),
    ],
  );
}

// Crea Un Widget Con Varios Hijos Column (Sera De Forma Vertical)
Widget myLayoutWidget7() {
  return Column(
    children: [
      Icon(Icons.home),
      Icon(Icons.add_alert_sharp),
      Icon(Icons.account_tree),
      Icon(Icons.air_rounded),
    ],
  );
}

// Crea Un Widget Con Varios Hijos Row (Sera De Forma Horizontal) separaddos
Widget myLayoutWidget8() {
  return Row(
    children: [
      Expanded(child: Icon(Icons.home)),
      Expanded(child: Icon(Icons.add_alert_sharp)),
      Expanded(child: Icon(Icons.account_tree)),
      Expanded(child: Icon(Icons.air_rounded)),
      Expanded(child: myLayoutWidget9()),
    ],
  );
}

// Crea Un Widget  Con Peso En Los Hijos
Widget myLayoutWidget9() {
  return Row(
    children: [
      Expanded(
        flex: 4,
        child: Container(
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 6,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    ],
  );
}

// Crea Una Pila Con Una Imagen Y texto
Widget myLayoutWidget10() {
  return Stack(
    // any unpositioned children (ie, our text) will be aligned at the bottom right
    alignment: Alignment.bottomRight,
    children: [
      Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('assets/ch.jpg'),
          radius: 200,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '¡Que Anu tenga misericordia de sus almas y que los antiguos nunca gobiernen de nuevo!',
          style: TextStyle(color: Colors.teal[200], fontSize: 20),
        ),
      ),
    ],
  );
}

// Recrear Una Aplicacion
Widget myLayoutWidget11() {
  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.purple[900],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Primera Fila
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.green,
              ),
            ),
            Text(
              'BEAMS',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),

        // Segunda Fila (Item Simple)
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 0,
          ),
          child: Text(
            'Send programmable push notifications to iOS and Android.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        // Tercer Fila
        Row(
          children: [
            Text(
              'EXPLORE BEAMS',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

//-....................................................................Segunda Pagina
//Widget De Texto
Widget widgetPrueba1() {
  return Text(
    "Esto Es Un Texto",
    style: TextStyle(fontSize: 30.0),
  );
}

//Widget De Crear Boton
Widget widgetPrueba3() {
  return RaisedButton(
    child: const Text('Button'),
    color: Colors.blue,
    elevation: 4.0,
    splashColor: Colors.yellow,
    onPressed: () {
      // do something
    },
  );
}

//Widget De Crear Boton Sin Altura
Widget widgetPrueba4() {
  return FlatButton(
    child: const Text('Button'),
    splashColor: Colors.green,
    onPressed: () {},
  );
}

//Widget de Campo De Texto
Widget widgetPrueba5() {
  return TextField(
    decoration:
        InputDecoration(border: InputBorder.none, hintText: 'Escribir Aqui'),
  );
}

//Widget de Campo De Texto Con Linea Azul
Widget widgetPrueba6() {
  return TextField(
    decoration: InputDecoration(hintText: 'Escribir Aqui 2'),
  );
}

//Widget de ListaView
Widget widgetPrueba7() {
  return ListView.builder(
    padding: EdgeInsets.all(16.0),
    // spacing of the rows
    itemExtent: 30.0,
    // provides an infinite list
    itemBuilder: (BuildContext context, int index) {
      return Text('Lista $index');
    },
  );
}

//Widget de ListaView Que Muestra Cual Se Selecciona
Widget widgetPrueba8() {
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Lista $index'),
        onTap: () {
          // do something
        },
      );
    },
  );
}
