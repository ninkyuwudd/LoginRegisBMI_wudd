import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  // const Mainpage({super.key});
  static const routename = '/mainpage';

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final bmiheight = TextEditingController();
  final bmiweight = TextEditingController();
  String bmires = '';
  String bmiClasses = '';
  Color warna = Colors.blue;
  @override
  Widget build(BuildContext context) {
    final getname = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Welcome $getname",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
  
        margin: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                const Text(
                  'BMI Calculator',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Height"),
                    SizedBox(height: 10,),
                    TextField(
                      controller: bmiheight,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: 'height',
                          icon: Icon(Icons.height),
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Weight"),
                    SizedBox(height: 10,),
                    TextField(
                      controller: bmiweight,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: 'weight',
                          icon: Icon(Icons.line_weight),
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bmires = (int.parse(bmiweight.text) /
                              ((int.parse(bmiheight.text) *
                                      int.parse(bmiheight.text)) *
                                  0.0001))
                          .toStringAsFixed(1);
                      if (double.parse(bmires) < 16) {
                        warna = Colors.yellow;
                        bmiClasses = 'sangat kurus';
                      }
                      if (16 <= double.parse(bmires) &&
                          double.parse(bmires) <= 17) {
                        warna = Color.fromARGB(255, 209, 255, 59);
                        bmiClasses = 'kurus';
                      }
                      if (17 < double.parse(bmires) &&
                          double.parse(bmires) <= 18.5) {
                            warna = Color.fromARGB(255, 209, 255, 59);
                        bmiClasses = 'sedikit kurus';
                      }
                      if (18.5 < double.parse(bmires) &&
                          double.parse(bmires) <= 25) {
                        warna = Colors.green;
                        bmiClasses = 'Normal';
                      }
                      if (25 < double.parse(bmires) &&
                          double.parse(bmires) <= 30) {
                        warna = Colors.orange;
                        bmiClasses = 'Bobot Berlebih';
                      }
                      if (30 < double.parse(bmires) &&
                          double.parse(bmires) <= 35) {
                            warna = Color.fromARGB(255, 255, 87, 87);
                        bmiClasses = 'Obesitas tingkat 1';
                      }
                      if (35 < double.parse(bmires) &&
                          double.parse(bmires) <= 40) {
                            warna = Color.fromARGB(255, 170, 23, 13);
                        bmiClasses = 'Obesitas tingkat 2';
                      }
                      if (double.parse(bmires) > 40) {
                        warna = Color.fromARGB(255, 86, 0, 0);
                        bmiClasses = 'Obesitas tingkat 3';
                      }
                    });
                  },
                  child: const Text(
                    'count',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: warna,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        'Result = $bmires',
                        style: const TextStyle(
                          fontSize: 20,color: Colors.white
                        ),
                      ),
                      Text(
                        bmiClasses,
                        style: const TextStyle(fontSize: 20,color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
