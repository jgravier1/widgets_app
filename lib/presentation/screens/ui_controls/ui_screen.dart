import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControls(),
    );
  }
}

class _UiControls extends StatefulWidget {
  const _UiControls();

  @override
  State<_UiControls> createState() => _UiControlsState();
}

enum Transportatiom { car, plane, boat, submarine }

class _UiControlsState extends State<_UiControls> {
  bool isDeveloper = true;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportatiom selectedTrasnportation = Transportatiom.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTrasnportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Vaiajar por carro'),
                value: Transportatiom.car,
                groupValue: selectedTrasnportation,
                onChanged: (value) => setState(() {
                      selectedTrasnportation = Transportatiom.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Vaiajar por barco'),
                value: Transportatiom.boat,
                groupValue: selectedTrasnportation,
                onChanged: (value) => setState(() {
                      selectedTrasnportation = Transportatiom.boat;
                    })),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Vaiajar por avion'),
              value: Transportatiom.plane,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Transportatiom.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Vaiajar por subamrino'),
              value: Transportatiom.submarine,
              groupValue: selectedTrasnportation,
              onChanged: (value) => setState(() {
                selectedTrasnportation = Transportatiom.submarine;
              }),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }), 
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }), 
        ),
        CheckboxListTile(
          title: const Text('Cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }), 
        ),
      ],
    );
  }
}
